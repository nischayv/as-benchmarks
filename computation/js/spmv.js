/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2014, Erick Lavoie, Faiz Khan, Sujay Kathrotia, Vincent
 * Foley-Bourgon, Laurie Hendren
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

import { commonRandomJS } from './common'

const NewArray = function (dim) {
  const xs = new Array(dim)
  for (let i = 0; i < dim; ++i) {
    xs[i] = 0
  }
  return xs
}

/* Ziggurat code taken from james bloomer's implementation that can be
 * found at  https://github.com/jamesbloomer/node-ziggurat
 */
function Ziggurat() {
  let jsr = 123456789
  const wn = NewArray(128)
  const fn = NewArray(128)
  const kn = NewArray(128)

  function SHR3() {
    const jz = jsr
    let jzr = jsr
    jzr ^= jzr << 13
    jzr ^= jzr >>> 17
    jzr ^= jzr << 5
    jsr = jzr
    return (jz + jzr) | 0
  }

  function UNI() {
    return 0.5 * (1 + SHR3() / -Math.pow(2, 31))
  }

  function nfix(hz, iz) {
    const r = 3.442619855899
    const r1 = 1.0 / r
    let x
    let y
    // eslint-disable-next-line no-constant-condition
    while (true) {
      x = hz * wn[iz]
      if (iz === 0) {
        x = -Math.log(UNI()) * r1
        y = -Math.log(UNI())
        while (y + y < x * x) {
          x = -Math.log(UNI()) * r1
          y = -Math.log(UNI())
        }
        return hz > 0 ? r + x : -r - x
      }

      if (fn[iz] + UNI() * (fn[iz - 1] - fn[iz]) < Math.exp(-0.5 * x * x)) {
        return x
      }
      hz = SHR3()
      iz = hz & 127

      if (Math.abs(hz) < kn[iz]) {
        return hz * wn[iz]
      }
    }
  }

  function RNOR() {
    const hz = SHR3()
    const iz = hz & 127
    return Math.abs(hz) < kn[iz] ? hz * wn[iz] : nfix(hz, iz)
  }

  this.nextGaussian = function () {
    return RNOR()
  }

  function zigset() {
    const m1 = 2147483648.0
    let dn = 3.442619855899
    let tn = dn
    const vn = 9.91256303526217e-3

    const q = vn / Math.exp(-0.5 * dn * dn)
    kn[0] = Math.floor((dn / q) * m1)
    kn[1] = 0

    wn[0] = q / m1
    wn[127] = dn / m1

    fn[0] = 1.0
    fn[127] = Math.exp(-0.5 * dn * dn)

    for (let i = 126; i >= 1; i--) {
      dn = Math.sqrt(-2.0 * Math.log(vn / dn + Math.exp(-0.5 * dn * dn)))
      kn[i + 1] = Math.floor((dn / tn) * m1)
      tn = dn
      fn[i] = Math.exp(-0.5 * dn * dn)
      wn[i] = dn / m1
    }
  }

  zigset()
}

const gaussian = new Ziggurat()

function randNorm() {
  return gaussian.nextGaussian()
}

function rand() {
  const n = commonRandomJS() * (Math.pow(2, 32) - 1)
  return Math.floor(n) ? Math.floor(n) : Math.ceil(n)
}

function genRand(lb, hb) {
  if (lb < 0 || hb < 0 || hb < lb) return 0

  const range = hb - lb + 1
  return (rand() % range) + lb
}

function randf() {
  return 1.0 - 2.0 * (rand() / (2147483647 + 1.0))
}

function sortSubArray(a, start, finish) {
  // TA
  const t = a.subarray(start, finish).sort()
  for (let i = start; i < finish; ++i) {
    a[i] = t[i - start]
  }
}

function generateRandomCSR(dim, density, stddev) {
  let nnzIthRow, randCol, nnzIthRowDouble
  const m = {}

  // lets figure out how many non zero entries we have
  m.numRows = dim
  m.numCols = dim
  m.densityPerc = density / 10000.0
  m.nzPerRow = (dim * density) / 1000000
  m.numNonZeros = Math.round(m.nzPerRow * dim)
  m.stdev = stddev * m.nzPerRow

  m.aRow = new Uint32Array(m.numRows + 1)
  m.aCol = new Uint32Array(m.numNonZeros) // TA

  m.aRow[0] = 0
  const nzPerRowDoubled = 2 * m.nzPerRow
  const highBound = Math.min(m.numCols, nzPerRowDoubled)
  const usedCols = new Int8Array(m.numCols)

  for (let i = 0; i < m.numRows; ++i) {
    nnzIthRowDouble = randNorm()
    nnzIthRowDouble *= m.stdev
    nnzIthRowDouble += m.nzPerRow

    if (nnzIthRowDouble < 0) {
      nnzIthRow = 0
    } else if (nnzIthRowDouble > highBound) {
      nnzIthRow = highBound
    } else {
      nnzIthRow = Math.abs(Math.round(nnzIthRowDouble))
    }

    m.aRow[i + 1] = m.aRow[i] + nnzIthRow

    // no realloc in javascript typed arrays
    if (m.aRow[i + 1] > m.numNonZeros) {
      const temp = m.aCol
      m.aCol = new Int32Array(m.aRow[i + 1]) // TA
      m.aCol.set(temp, 0)
    }

    for (let j = 0; j < m.numCols; ++j) {
      usedCols[j] = 0
    }

    for (let j = 0; j < nnzIthRow; ++j) {
      randCol = genRand(0, m.numCols - 1)
      if (usedCols[randCol]) {
        --j
      } else {
        m.aCol[m.aRow[i] + j] = randCol
        usedCols[randCol] = 1
      }
    }

    // sort the column entries
    sortSubArray(m.aCol, m.aRow[i], m.aRow[i + 1])
  }

  m.numNonZeros = m.aRow[m.numRows]
  m.densityPerc = (m.numNonZeros * 100.0) / (m.numCols * m.numRows)
  m.densityPpm = Math.round(m.densityPerc * 10000.0)

  m.ax = new Float32Array(m.numNonZeros)
  for (let i = 0; i < m.numNonZeros; ++i) {
    m.ax[i] = randf()
    while (m.ax[i] === 0.0) {
      m.ax[i] = randf()
    }
  }
  return m
}

function spmvCsr(matrix, dim, rowv, colv, v, y, out) {
  let rowStart, rowEnd
  let sum = 0

  for (let i = 0; i < dim; ++i) {
    sum = y[i]
    rowStart = rowv[i]
    rowEnd = rowv[i + 1]

    for (let j = rowStart; j < rowEnd; ++j) {
      sum += matrix[j] * v[colv[j]]
    }

    out[i] = sum
  }
}

export function spmv(dim = 25000, density = 1000, stddev = 0.005, iterations = 50) {
  const m = generateRandomCSR(dim, density, stddev)
  const v = new Float32Array(dim)
  const y = new Float32Array(dim)
  const out = new Float32Array(dim)
  Array.prototype.forEach.call(v, function (n, i, a) {
    a[i] = randf()
  })

  const t1 = performance.now()
  for (let i = 0; i < iterations; ++i) {
    spmvCsr(m.ax, dim, m.aRow, m.aCol, v, y, out)
  }
  const t2 = performance.now()

  return t2 - t1
}
