import asBind from 'as-bind/dist/as-bind.esm';
import { runFFT } from './js';

const runWasmTest = async () => {
  const wasm = fetch('build/optimized.wasm');
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

  const webAssemblyResult = asBindInstance.exports.runFFT(8);
  const jsResult = runFFT(8)

  // Set the results onto the body
  const wasmElement = document.createElement('div')
  const jsElement = document.createElement('div')

  wasmElement.innerText = `Webassembly: ${webAssemblyResult} ms`
  jsElement.innerText = `JS: ${jsResult} ms`

  document.body.appendChild(wasmElement);
  document.body.appendChild(jsElement);
};

runWasmTest();
