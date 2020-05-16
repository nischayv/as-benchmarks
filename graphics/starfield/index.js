import { Starfield } from './js'

const canvas = document.getElementById('starfield')
const context = canvas.getContext('2d')
const fpsElement = document.getElementById('fps')
const option = document.getElementById('selectedOption')
const starfieldJs = new Starfield()
let wasmInstance
let starfield
let lastOption
let memory
let wasmByteMemoryArray
let starCount = 0
let fps = 0
let accTime = 0
let lastTime = 0

const fetchWasm = async () => {
  const imports = {
    env: {
      abort(_msg, _file, line, column) {
        console.error(`Abort called at ${_file}:${line}:${column}`)
      },
      seed() {
        return Math.random() * 1e64
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
    memory = wasmInstance.instance.exports.memory
    wasmByteMemoryArray = new Float64Array(memory.buffer)
  } catch (e) {
    console.error(`Can't instantiate WebAssembly module.\n`, e)
  }
}

const updateFPS = () => {
  const now = performance.now()
  fps += 1
  if (accTime >= 1000) {
    fpsElement.innerHTML = Math.floor((1000 * fps) / accTime)
    fps = 0
    accTime = 0
  } else {
    accTime += now - lastTime
  }
  lastTime = now
}

const animate = () => {
  if (option.value !== lastOption) {
    if (starfield) {
      starfield.clear()
      starCount = 0
    }
    starfield = option.value === 'Javascript' ? starfieldJs : wasmInstance.instance.exports
    lastOption = option.value
  }

  setTimeout(animate, 0)

  context.clearRect(0, 0, canvas.width, canvas.height) // clear the frame

  if (starCount < 750) {
    starfield.addStar()
    starCount++
  }
  starfield.updateStars()

  for (let i = 0; i < starCount; i++) {
    let x = 0
    let y = 0
    let color = 0
    if (option.value === 'Javascript') {
      [x, y, color] = starfield.getStar(i)
    } else {
      starfield.setStar(i)
      x = wasmByteMemoryArray[0]
      y = wasmByteMemoryArray[1]
      color = wasmByteMemoryArray[2]
    }

    // use the color value for the R, G and B component
    context.fillStyle = `rgb(${color},${color},${color})`
    context.beginPath()

    // draw a circle
    context.arc(400 + x, 400 + y, Math.abs(y / 200 + i / 300), 0, 2 * Math.PI)
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
