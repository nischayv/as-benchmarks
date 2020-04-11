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

const generateCharts = (wasmInstance) => {
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

  const averageTimeData = data.map(val => getAverageCaseTime(val))
  generateBarGraph('Average Runtime', labels1, averageTimeData)

  const labels2 = ['Assemblyscript', 'Javascript']
  generateLineGraph('bfs', labels2, [bfsResults.as, bfsResults.js])
  generateLineGraph('fft', labels2, [fftResults.as, fftResults.js])
  generateLineGraph('lud', labels2, [ludResults.as, ludResults.js])
  generateLineGraph('pagerank', labels2, [pagerankResults.as, pagerankResults.js])
  generateLineGraph('spmv', labels2, [spmvResults.as, spmvResults.js])
}

export const runBenchmark = () => {
  // Benchmark to test how bfs behaves as input size increase
  // Very time intensive so commenting for now
  // Result is linear increase but slope of as is less than js

  // for (let i = 0; i < 1000;  i++) {
  //   const temp1 = []
  //   const temp2 = []
  //   for (let j = 0; j < 10; j++) {
  //     const as = wasmInstance.exports.bfs(i * 100)
  //     const js = bfs(i * 100)
  //     if (j !== 0) {
  //       temp1.push(as)
  //       temp2.push(js)
  //     }
  //   }
  //   asBfsResults.push(mean(temp1))
  //   jsBfsResults.push(mean(temp2))
  //   console.log(`${i}th iteration`)
  // }
  //
  // generateRuntimeBarGraph(asBfsResults, jsBfsResults, 'line', 1000)

  toggleSpinner()
  generateCharts(wasmInstance)
  toggleSpinner()
}

fetchWasm()
