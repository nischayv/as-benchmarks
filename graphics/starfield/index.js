import { Starfield } from './js'

// let wasmInstance
const canvas = document.getElementById('starfield')
console.log(canvas)
const context = canvas.getContext('2d')
const starfieldJs = new Starfield()

// const fetchWasm = async () => {
//   const imports = {
//     env: {
//       abort(_msg, _file, line, column) {
//         console.error(`Abort called at ${_file}:${line}:${column}`)
//       }
//     },
//     common: {
//       consoleLog(message) {
//         console.log(message)
//       },
//       performanceNow() {
//         return performance.now()
//       }
//     }
//   }
//   // Instantiate our wasm module
//   try {
//     const response = fetch('build/optimized.wasm')
//     if (typeof WebAssembly.instantiateStreaming === 'function') {
//       wasmInstance = await WebAssembly.instantiateStreaming(response, imports)
//     } else {
//       wasmInstance = await WebAssembly.instantiate(await (await response).arrayBuffer(), imports)
//     }
//   } catch (e) {
//     console.error(`Can't instantiate WebAssembly module.\n`, e)
//   }
// }

function animate() {
  context.clearRect(0, 0, canvas.width, canvas.height) // clear the frame
  starfieldJs.addStar()
  starfieldJs.updateStars()

  for (let n = 0; n < starfieldJs.getStarsLength(); n++) {
    const star = starfieldJs.getStarInfo(n)
    // use the color value for the R, G and B component
    context.fillStyle = `rgb(${star[2]},${star[2]},${star[2]})`
    context.beginPath()

    // draw a circle
    context.arc(
      400 + star[0],
      400 + star[1],
      Math.abs(star[1] / 100 + n / 200),
      0,
      2 * Math.PI
    )
    context.fill()
  }
  window.requestAnimationFrame(animate) // request another animation frame
}


export const runStarfield = () => {
  // if (!wasmInstance) return
  window.requestAnimationFrame(animate)
}

// await fetchWasm()
runStarfield()
