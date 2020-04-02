import asBind from 'as-bind/dist/as-bind.esm';
import { runPageRank } from './js';

const runWasmTest = async () => {
  // Instantiate our wasm module
  const wasm = fetch('build/untouched.wasm');
  const asBindInstance = await asBind.instantiate(wasm, {
    env: {
      abort: () => console.log("Abort!")
    },
    index: {
      consoleLog: msg => {
        console.log(msg);
      },
      performanceNow: () => performance.now()
    }
  });

  const webAssemblyResult = asBindInstance.exports.runPageRankWasm(1000)
  const jsResult = runPageRank(1000)
  // Set the results onto the body
  const wasmElement = document.createElement('div')
  const jsElement = document.createElement('div')
  wasmElement.innerText = `Webassembly: ${webAssemblyResult}`
  jsElement.innerText = `JS: ${jsResult}`
  document.body.appendChild(wasmElement);
  document.body.appendChild(jsElement);
};

runWasmTest();
