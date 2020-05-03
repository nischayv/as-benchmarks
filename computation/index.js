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

const getFunctionName = (option) => {
  if (option === 'Breadth First Search') {
    return 'bfs'
  } else if (option === 'Fast Fourier Transform') {
    return 'fft'
  } else if (option === 'Lower Upper Decomposition') {
    return 'lud'
  } else if (option === 'Page Rank') {
    return 'pagerank'
  } else {
    return 'spmv'
  }
}

const runFunction = (fnName, wasmInstance, iterations) => {
  const result1 = []
  const result2 = []
  for (let i = 0; i < iterations; i++) {
    console.log(`Iteration number: ${i}`)
    const jsResult = jsFunctions[fnName]()
    const asResult = wasmInstance.instance.exports[fnName]()
    result1.push(jsResult)
    result2.push(asResult)
  }

  return { js: result1, as: result2 }
}

export const inputHandler = (e) => {
  const value = e.target.value
  if (!value) {
    document.getElementById('iterations').classList.add('is-invalid')
  } else {
    document.getElementById('iterations').classList.remove('is-invalid')
  }
}

export const runBenchmark = () => {
  const option = document.getElementById('selectedOption').value
  const iterations = document.getElementById('iterations').value
  const canvas = document.getElementById('bar-graph')
  canvas.width = 0
  canvas.height = 0

  if (!option || !iterations) {
    return
  }

  const fnName = getFunctionName(option)
  toggleSpinner()
  setTimeout(() => {
    const results = runFunction(fnName, wasmInstance, iterations)
    const data = [results.as, results.js]

    toggleSpinner()
    const averageTimeData = data.map(val => getAverageCaseTime(val))
    generateBarGraph('Average Runtime', [option], averageTimeData)

    const labels = ['AssemblyScript', 'Javascript']
    generateLineGraph(option, labels, data, iterations)
  }, 10)
}

fetchWasm()
