import { generateBarGraph, generateLineGraph, toggleSpinner } from './chart'
import jsFunctions from './js'
import { mean } from 'stats-lite'

let wasmInstance;

const fetchWasm = async () => {
  // Instantiate our wasm module
  const wasm = fetch('build/optimized.wasm')
  wasmInstance = await WebAssembly.instantiateStreaming(wasm, {
    env: {
      abort(_msg, _file, line, column) {
        console.error(`Abort called at ${_file}:${line}:${column}`)
      }
    },
    common: {
      consoleLog: message => {
        console.log(message)
      },
      performanceNow: () => performance.now()
    }
  })
}

const getAverageCaseTime = (arr) => mean(arr)

const runFunction = (fnName, wasmInstance) => {
  const result1 = []
  const result2 = []
  for (let i = 0; i < 120; i++) {
    console.log(`Iteration number: ${i}`)
    const jsResult = jsFunctions[fnName]()
    const asResult = wasmInstance.instance.exports[fnName]()
    result1.push(jsResult)
    result2.push(asResult)
  }

  return { js: result1, as: result2 }
}

export const runBenchmark = () => {
  toggleSpinner()
  setTimeout(() => {
    const bfsResults = runFunction('bfs', wasmInstance)
    const fftResults = runFunction('fft', wasmInstance)
    const ludResults = runFunction('lud', wasmInstance)
    const pagerankResults = runFunction('pagerank', wasmInstance)
    const spmvResults = runFunction('spmv', wasmInstance)
    const labels1 = ['bfs', 'fft', 'lud', 'pagerank', 'spmv']
    const data = [
      bfsResults.as,
      fftResults.as,
      ludResults.as,
      pagerankResults.as,
      spmvResults.as,
      bfsResults.js,
      fftResults.js,
      ludResults.js,
      pagerankResults.js,
      spmvResults.js
    ]

    toggleSpinner()
    const averageTimeData = data.map(val => getAverageCaseTime(val))
    generateBarGraph('Average Runtime', labels1, averageTimeData)

    const labels2 = ['AssemblyScript', 'Javascript']
    generateLineGraph('bfs', labels2, [bfsResults.as, bfsResults.js])
    generateLineGraph('fft', labels2, [fftResults.as, fftResults.js])
    generateLineGraph('lud', labels2, [ludResults.as, ludResults.js])
    generateLineGraph('pagerank', labels2, [pagerankResults.as, pagerankResults.js])
    generateLineGraph('spmv', labels2, [spmvResults.as, spmvResults.js])
  }, 0)
}

fetchWasm()
