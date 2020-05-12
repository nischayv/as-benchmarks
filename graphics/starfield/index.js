import { Starfield } from './js'

const canvas = document.getElementById('starfield')
const context = canvas.getContext('2d')
const fpsElement = document.getElementById('fps')
const option = document.getElementById('selectedOption')
const starfieldJs = new Starfield()
let wasmInstance
let module
let lastOption
let fps = 0
let accTime = 0
let lastTime = 0

const fetchWasm = async () => {
  const imports = {
    env: {
      abort(_msg, _file, line, column) {
        console.error(`Abort called at ${_file}:${line}:${column}`)
      },
      seed() { return Math.random() * 1e64 }
    },
    common: {
      consoleLog(message) {
        console.log(message)
      },
      performanceNow() {
        return performance.now()
      }
    }
  }
  // Instantiate our wasm module
  try {
    const response = fetch('build/optimized.wasm')
    if (typeof WebAssembly.instantiateStreaming === 'function') {
      wasmInstance = await WebAssembly.instantiateStreaming(response, imports)
    } else {
      wasmInstance = await WebAssembly.instantiate(await (await response).arrayBuffer(), imports)
    }
  } catch (e) {
    console.error(`Can't instantiate WebAssembly module.\n`, e)
  }
}

const updateFPS = () => {
  const now = performance.now()
  fps += 1
  if (accTime >= 1000) {
    fpsElement.innerHTML = Math.floor(1000 * fps / accTime)
    fps = 0
    accTime = 0
  } else {
    accTime += now - lastTime
  }
  lastTime = now
}

const animate = () => {
  if (option.value !== lastOption) {
    if (module) {
      module.clear()
    }
    module = option.value === 'Javascript' ? starfieldJs : wasmInstance.instance.exports
    lastOption = option.value
  }

  setTimeout(animate, 0)

  context.clearRect(0, 0, canvas.width, canvas.height) // clear the frame
  module.addStar()
  module.updateStars()

  for (let n = 0; n < starfieldJs.getStarsLength(); n++) {
    const star = module.getStarInfo(n)
    // use the color value for the R, G and B component
    context.fillStyle = `rgb(${star[2]},${star[2]},${star[2]})`
    context.beginPath()

    // draw a circle
    context.arc(
      400 + star[0],
      400 + star[1],
      Math.abs(star[1] / 200 + n / 300),
      0,
      2 * Math.PI
    )
    context.fill()
  }

  updateFPS()
}

export const runStarfield = async () => {
  await fetchWasm()
  if (!wasmInstance) {
    return
  }

  animate()
}

runStarfield()