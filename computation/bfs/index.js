import asBind from 'as-bind/dist/as-bind.esm'
import { generateRuntimeBarGraph } from './chart'
import { bfsGraph } from './js'

const runBenchmark = async () => {
  // Instantiate our wasm module
  const wasm = fetch('build/optimized.wasm')
  const asBindInstance = await asBind.instantiate(wasm, {
    index: {
      consoleLog: message => {
        console.log(message)
      },
      performanceNow: () => performance.now()
    }
  })

  const asBfsResults = []
  const jsBfsResults = []

  for (let i = 0; i < 120; i++) {
    const as = asBindInstance.exports.bfs(200000)
    const js = bfsGraph(200000, false)
    asBfsResults.push(as)
    jsBfsResults.push(js)
  }

  generateRuntimeBarGraph(asBfsResults, jsBfsResults,'bar')
  generateRuntimeBarGraph(asBfsResults, jsBfsResults, 'line')
}

runBenchmark()
