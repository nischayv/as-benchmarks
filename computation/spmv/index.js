import asBind from 'as-bind/dist/as-bind.esm';
import { spmvRunJs } from './js';

export const wasmBrowserInstantiate = async (wasmModuleUrl, importObject) => {
  let response = undefined;

  // Check if the browser supports streaming instantiation
  if (WebAssembly.instantiateStreaming) {
    const module = fetch(wasmModuleUrl)
      // Fetch the module, and instantiate it as it is downloading
    response = await WebAssembly.instantiateStreaming(
      module,
      importObject
    );
  } else {
    // Fallback to using fetch to download the entire module
    // And then instantiate the module
    const fetchAndInstantiateTask = async () => {
      const wasmArrayBuffer = await fetch(wasmModuleUrl).then(response =>
        response.arrayBuffer()
      );
      return WebAssembly.instantiate(wasmArrayBuffer, importObject);
    };
    response = await fetchAndInstantiateTask();
  }

  return response;
};

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

  const webAssemblyResult = asBindInstance.exports.spmvRun(10000, 40000, 100, 10);
  const jsResult = spmvRunJs(10000, 40000, 100, 10)

  // Set the results onto the body
  const wasmElement = document.createElement('div')
  const jsElement = document.createElement('div')

  wasmElement.innerText = `Webassembly: ${webAssemblyResult}`
  jsElement.innerText = `JS: ${jsResult}`

  document.body.appendChild(wasmElement);
  document.body.appendChild(jsElement);
};

runWasmTest();
