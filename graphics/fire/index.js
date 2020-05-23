import { FireEffect } from './js'

const canvas = document.getElementById('fire')
const context = canvas.getContext('2d')
const width = 1500
const height = 400
const imgData = context.createImageData(width, height)
const fpsElement = document.getElementById('fps')
const option = document.getElementById('selectedOption')
const fireEffectJs = new FireEffect()
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
        return Math.random() * 1e64
      }
    }
  }

  // Instantiate wasm module
  try {
    const response = fetch('build/optimized.wasm')
    if (typeof WebAssembly.instantiateStreaming === 'function') {
      wasmInstance = await WebAssembly.instantiateStreaming(response, imports)
    } else {
      wasmInstance = await WebAssembly.instantiate(await (await response).arrayBuffer(), imports)
    }
    const { memory, getDataBuffer } = wasmInstance.instance.exports
    const offset = getDataBuffer()
    wasmByteMemoryArray = new Uint8Array(memory.buffer, offset, height * width * 4)
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
  imgData.data.set(fire)
  context.putImageData(imgData, 0, 0)

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
