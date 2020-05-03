import { commonRandomJS } from './common'

function complexPolar(r, t) {
  return { r: r * Math.cos(t), i: r * Math.sin(t) }
}

function fftSimple(r, i) {
  const N = r.length
  const R = new Float64Array(N)
  const I = new Float64Array(N)

  if (N === 1) {
    R[0] = r[0]
    I[0] = i[0]
    return { r: R, i: I }
  }

  const len = N / 2
  const er = new Float64Array(len)
  const ei = new Float64Array(len)
  const dr = new Float64Array(len)
  const di = new Float64Array(len)

  for (let k = 0; k < len; ++k) {
    er[k] = r[2 * k]
    ei[k] = i[2 * k]
    dr[k] = r[2 * k + 1]
    di[k] = i[2 * k + 1]
  }

  const E = fftSimple(er, ei)
  const D = fftSimple(dr, di)
  const ER = E.r
  const EI = E.i
  const DR = D.r
  const DI = D.i

  for (let k = 0; k < len; ++k) {
    const c = complexPolar(1, (-2.0 * Math.PI * k) / N)
    const r = DR[k]
    const i = DI[k]
    DR[k] = r * c.r - i * c.i
    DI[k] = r * c.i + i * c.r
  }

  for (let k = 0; k < len; ++k) {
    let er = ER[k]
    let dr = DR[k]
    let ei = EI[k]
    let di = DI[k]

    R[k] = er + dr
    I[k] = ei + di

    R[k + len] = er - dr
    I[k + len] = ei - di
  }
  return { r: R, i: I }
}

function transpose(m) {
  let tempr, tempi
  const N = m.length
  for (let i = 0; i < N; ++i) {
    for (let j = 0; j < i; ++j) {
      tempr = m[i].r[j]
      tempi = m[i].i[j]

      m[i].r[j] = m[j].r[i]
      m[i].i[j] = m[j].i[i]

      m[j].r[i] = tempr
      m[j].i[i] = tempi
    }
  }
}

function fft2D(m) {
  const len = m.length
  const M = new Array(len)
  for (let i = 0; i < len; ++i) {
    let mi = m[i]
    M[i] = fftSimple(mi.r, mi.i)
  }
  transpose(M)
  for (let i = 0; i < len; ++i) {
    let Mi = M[i]
    M[i] = fftSimple(Mi.r, Mi.i)
  }
  transpose(M)
  return M
}

function randomComplexArray(n) {
  const r = new Float64Array(n)
  const i = new Float64Array(n)

  for (let j = 0; j < n; ++j) {
    r[j] = commonRandomJS() * 2 - 1
    i[j] = commonRandomJS() * 2 - 1
  }
  return { r: r, i: i }
}

function randomComplexMatrix(n) {
  const M = new Array(n)
  for (let i = 0; i < n; ++i) M[i] = randomComplexArray(n) // TA
  return M
}

export function fft(twoExp = 8) {
  if (twoExp < 0 || twoExp > 30) {
    throw new Error("ERROR: invalid exponent of '" + twoExp + "' for input size")
  }
  const n = 1 << twoExp
  const data2D = randomComplexMatrix(n)

  const t1 = performance.now()
  fft2D(data2D)
  const t2 = performance.now()
  return t2 - t1
}
