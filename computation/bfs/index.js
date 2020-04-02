// https://github.com/torch2424/wasm-by-example/blob/master/demo-util/

import asBind from 'as-bind/dist/as-bind.esm';
import Benchmark from 'benchmark';
import { initializeGraph, bfsGraph } from './js';
const suite = new Benchmark.Suite;

const runWasmAdd = async () => {
  // Instantiate our wasm module
  // const wasmModule = await wasmBrowserInstantiate('build/untouched.wasm');
  const wasm = fetch('build/untouched.wasm');
  const asBindInstance = await asBind.instantiate(wasm, {
    index: {
      consoleLog: message => {
        console.log(message);
      },
      performanceNow: () => performance.now()
    }
  });

  let webAssemblyResult;
  let jsResult;

  // suite
  //   .add('Wasm BFS Init and Traversal', () => {
      asBindInstance.exports.bfs(1000)
    // })
    // .add('JS BFS Init and Traversal', () => {
      bfsGraph(1000, false)
    // })
    // .on('cycle', function(event) {
    //   console.log(String(event.target));
    // })
    // .on('complete', function() {
    //   console.log('Fastest is ' + this.filter('fastest').map('name'));
    // })
    // .run({ 'async': true })

  // Set the results onto the body
  // const wasmElement = document.createElement('div')
  // const jsElement = document.createElement('div')
  // wasmElement.innerText = `Webassembly: ${webAssemblyResult}`
  // jsElement.innerText = `JS: ${jsResult}`
  // document.body.appendChild(wasmElement);
  // document.body.appendChild(jsElement);
};

runWasmAdd();
