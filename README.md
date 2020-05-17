![](https://github.com/nischayv/as-benchmarks/workflows/CI/badge.svg)

# as-benchmarks

A set of benchmarks to test the performance of WebAssembly compiled from AssemblyScript
in comparison to Javascript. The computational benchmarks are based on the [Ostrich Benchmark Suite](https://github.com/Sable/Ostrich).

### [Live Demo](https://nischayv.github.io/as-benchmarks)

## Steps to run

Cd into any of the benchmarks and follow the instructions below.

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

The benchmark suite takes a while to run based on the current input sizes. Eventually we would like to support passing smaller inputs to the tests on the web page.

## Future work

In addition to the numerical computing benchmarks currently implemented, I would like to add benchmarks on graphics, audio or video processing, etc. Contributions are welcome!!

## License
This project is licensed under the MIT License.
