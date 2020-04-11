import { performance, console, commonRandomJS } from './common';

// classes
class Polar {
  constructor(
    public r: f64,
    public i: f64
  ) { }
}

class PolarArray {
  constructor(
    public r: Float64Array,
    public i: Float64Array
  ) { }
}

function complexPolar(r: f64, t: f64): Polar {
  return new Polar(r*Math.cos(t), r*Math.sin(t));
}

function fftSimple(r: Float64Array, i: Float64Array): PolarArray {
  const N = r.length;
  const R = new Float64Array(N);
  const I = new Float64Array(N);

  if (N===1) {
    R[0] = r[0];
    I[0] = i[0];
    return new PolarArray(R, I);
  }

  let len = N/2;
  const er = new Float64Array(N/2);
  const ei = new Float64Array(N/2);
  const dr = new Float64Array(N/2);
  const di = new Float64Array(N/2);

  for(let k=0; k < len; ++k){
    unchecked(er[k] = r[2*k]);
    unchecked(ei[k] = i[2*k]);
    unchecked(dr[k] = r[2*k + 1]);
    unchecked(di[k] = i[2*k + 1]);
  }


  const E = fftSimple(er, ei);
  const D = fftSimple(dr, di);
  const ER = E.r;
  const EI = E.i;
  const DR = D.r;
  const DI = D.i;

  len = r.length/2;
  for(let k = 0; k < len; ++k) {
    const c = complexPolar(1, -2.0*Math.PI*k/N);
    const t = unchecked(DR[k]);
    unchecked(DR[k] = t*c.r - DI[k]*c.i);
    unchecked(DI[k] = t*c.i + DI[k]*c.r);
  }

  len = N/2;
  for(let k = 0; k<len; ++k) {
    unchecked(R[k] = ER[k] + DR[k]);
    unchecked(I[k] = EI[k] + DI[k]);

    unchecked(R[k + N/2] = ER[k] - DR[k]);
    unchecked(I[k + N/2] = EI[k] - DI[k]);
  }

  return new PolarArray(R, I);
}

function transpose(m: StaticArray<PolarArray>): void {
  let tempr: f64, tempi: f64;
  const N = m.length;

  for(let i = 0; i < N; ++i) {
    let mi = unchecked(m[i]);
    let mi_r = mi.r;
    let mi_i = mi.i;

    for(let j = 0; j < i; ++j) {
      let mj = unchecked(m[j]);
      let mj_r = mj.r;
      let mj_i = mj.i;

      tempr = unchecked(mi_r[j]);
      tempi = unchecked(mi_i[j]);

      unchecked(mi_r[j] = mj_r[i]);
      unchecked(mi_i[j] = mj_i[i]);

      unchecked(mj_r[i] = tempr);
      unchecked(mj_i[i] = tempi);
    }
  }
}

function fft2D(m: StaticArray<PolarArray>): StaticArray<PolarArray> {
  const len = m.length;
  const M: StaticArray<PolarArray> = new StaticArray<PolarArray>(len);

  for(let i=0; i < len; ++i) {
    const r_array = unchecked(m[i].r);
    const i_array = unchecked(m[i].i);
    unchecked(M[i] = fftSimple(r_array, i_array));
  }
  transpose(M);

  for(let i=0; i < len; ++i){
    const r_array = unchecked(M[i].r);
    const i_array = unchecked(M[i].i);
    unchecked(M[i] = fftSimple(r_array, i_array));
  }
  transpose(M);

  return M;
}

function randomComplexArray(n: i32): PolarArray {
  const R = new Float64Array(n);
  const I = new Float64Array(n);

  for(let i = 0; i < n; ++i){
    unchecked(R[i] = commonRandomJS()*2 - 1);
    unchecked(I[i] = commonRandomJS()*2 - 1);
  }

  return new PolarArray(R, I);
}

function randomComplexMatrix(n: i32): StaticArray<PolarArray> {
  const M = new StaticArray<PolarArray>(n);
  for(let i = 0; i < n; ++i) {
    unchecked(M[i] = randomComplexArray(n));
  }
  return M;
}

export function fft(): f64 {
  const twoExp: i32 = 8;
  const n = 1 << twoExp;
  const data2D = randomComplexMatrix(n);

  const t1 = performance.now();
  fft2D(data2D);
  const t2 = performance.now();
  return t2 - t1;
}
