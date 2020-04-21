# as-benchmarks

A set of benchmarks to test the performance of WebAssembly compiled from AssemblyScript
in comparison to Javascript. The computation benchmarks are based on the [Ostrich Benchmark Suite](https://github.com/Sable/Ostrich).

## Steps to run

Install dependencies

```
npm install
```

Compile AssemblyScript to WebAssembly

```
npm run asbuild
```

Run webpack dev server

```
npm run start:prod
```

## License
This project is licensed under the MIT License.