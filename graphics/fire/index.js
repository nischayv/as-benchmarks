import { FireEffect } from './js'

const canvas = document.getElementById('fire')
const context = canvas.getContext('2d')
const fpsElement = document.getElementById('fps')
const option = document.getElementById('selectedOption')
const fireEffectJs = new FireEffect()
const width = 100
const height = 80
let wasmInstance
let fireEffect
let lastOption
let memory
let wasmByteMemoryArray
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
        return Math.random()
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
    const { memory, getDataBuffer } = wasmInstance.instance.exports
    const offset = getDataBuffer()
    wasmByteMemoryArray = new Uint8Array(memory.buffer, offset, height * width)
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
    if (fireEffect) {
      fireEffect.clear()
    }
    fireEffect = option.value === 'Javascript' ? fireEffectJs : wasmInstance.instance.exports
    lastOption = option.value
  }

  setTimeout(animate, 0)

  fireEffect.updateScreen()
  const fire = option.value === 'Javascript' ? fireEffect.getFire() : wasmByteMemoryArray

  for(let i = height * 5; i < width * height; i++) {
    context.beginPath()
    // convert the index value i to screen coordinates and draw a box
    context.rect((i % width) * 10, (height - Math.floor(i / width)) * 10, 10, 10)
    // the red component of the RGB color is the value of the cell.
    context.fillStyle = `rgb(${fire[i]},0,0)`
    context.fill()
  }

  updateFPS()
}

export const runFire = async () => {
  await fetchWasm()
  if (!wasmInstance) {
    return
  }

  animate()
}

runFire()
