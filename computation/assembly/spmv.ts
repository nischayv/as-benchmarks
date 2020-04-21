import { performance, commonRandomJS } from './common'

// classes
class Csr {
  constructor(
    public numRows: i32,
    public numCols: i32,
    public densityPerc: f64,
    public densityPpm: f64,
    public nzPerRow: f64,
    public numNonZeros: i32,
    public stdev: f64,
    public aRow: StaticArray<u32>,
    public aCol: StaticArray<u32>,
    public ax: StaticArray<f32>
  ) {}
}

const newArray = function (dim: i32): StaticArray<f64> {
  const xs = new StaticArray<f64>(dim)
  for (let i = 0; i < dim; ++i) {
    unchecked((xs[i] = 0))
  }
  return xs
}

/* Ziggurat code taken from james bloomer's implementation that can be
 * found at  https://github.com/jamesbloomer/node-ziggurat
 */
class Ziggurat {
  public jsr: i32 = 123456789
  public wn: StaticArray<f64> = newArray(128)
  public fn: StaticArray<f64> = newArray(128)
  public kn: StaticArray<f64> = newArray(128)

  constructor() {
    this.zigset()
  }

  public nextGaussian(): f64 {
    return this.RNOR()
  }

  RNOR(): f64 {
    const hz = this.SHR3()
    const iz = hz & 127
    return Math.abs(hz) < unchecked(this.kn[iz]) ? hz * unchecked(this.wn[iz]) : this.nfix(hz, iz)
  }

  nfix(hz: i32, iz: i32): f64 {
    const r: f64 = 3.442619855899
    const r1: f64 = 1.0 / r
    let x: f64
    let y: f64
    // eslint-disable-next-line no-constant-condition
    while (true) {
      unchecked((x = hz * this.wn[iz]))
      if (iz === 0) {
        x = -Math.log(this.UNI()) * r1
        y = -Math.log(this.UNI())
        while (y + y < x * x) {
          x = -Math.log(this.UNI()) * r1
          y = -Math.log(this.UNI())
        }
        return hz > 0 ? r + x : -r - x
      }

      if (
        unchecked(this.fn[iz] + this.UNI() * this.fn[iz - 1] - this.fn[iz]) < Math.exp(-0.5 * x * x)
      ) {
        return x
      }

      hz = this.SHR3()
      iz = hz & 127

      if (Math.abs(hz) < unchecked(this.kn[iz])) {
        return unchecked(hz * this.wn[iz])
      }
    }
  }

  SHR3(): i32 {
    const jz = this.jsr
    let jzr = this.jsr
    jzr ^= jzr << 13
    jzr ^= jzr >>> 17
    jzr ^= jzr << 5
    this.jsr = jzr
    return (jz + jzr) | 0
  }

  UNI(): f64 {
    return 0.5 * (1 + this.SHR3() / -Math.pow(2, 31))
  }

  zigset(): void {
    const m1 = 2147483648.0
    let dn = 3.442619855899
    let tn = dn
    const vn = 9.91256303526217e-3

    const q = vn / Math.exp(-0.5 * dn * dn)
    unchecked((this.kn[0] = Math.floor((dn / q) * m1)))
    unchecked((this.kn[1] = 0))

    unchecked((this.wn[0] = q / m1))
    unchecked((this.wn[127] = dn / m1))

    unchecked((this.fn[0] = 1.0))
    unchecked((this.fn[127] = Math.exp(-0.5 * dn * dn)))

    for (let i = 126; i >= 1; i--) {
      dn = Math.sqrt(-2.0 * Math.log(vn / dn + Math.exp(-0.5 * dn * dn)))
      unchecked((this.kn[i + 1] = Math.floor((dn / tn) * m1)))
      tn = dn
      unchecked((this.fn[i] = Math.exp(-0.5 * dn * dn)))
      unchecked((this.wn[i] = dn / m1))
    }
  }
}

const gaussian = new Ziggurat()

function randNorm(): f64 {
  return gaussian.nextGaussian()
}

// @ts-ignore: decorator
@inline
function rand(): i64 {
  const n = commonRandomJS() * (Math.pow(2, 32) - 1)
  return (Math.floor(n) ? Math.floor(n) : Math.ceil(n)) as i64
}

// @ts-ignore: decorator
@inline
function genRand(lb: i32, hb: i32): i32 {
  if (lb < 0 || hb < 0 || hb < lb) return 0
  const range = hb - lb + 1
  const r = rand()
  const result = (r % range) + lb
  return result as i32
}

// @ts-ignore: decorator
@inline
function randf(): f64 {
  return 1.0 - 2.0 * (rand() as f64 / (2147483647 + 1.0))
}

function sortArray(a: StaticArray<u32>, start: u32, finish: u32): void {
  const t = a.slice(start, finish).sort()
  for (let i = start; i < finish; ++i) {
    unchecked((a[i] = t[i - start]))
  }
}

function generateRandomCSR(dim: i32, density: i32, stddev: f64): Csr {
  let nnzIthRow: f64, randCol: i32, nnzIthRowDouble: f64
  const densityPerc = density / 10000.0
  const nzPerRow = (dim * density) / 1000000
  const numNonZeros = Math.round(nzPerRow * dim) as i32
  const newStdev = stddev * nzPerRow

  const m = new Csr(
    dim,
    dim,
    densityPerc,
    0,
    nzPerRow,
    numNonZeros,
    newStdev,
    new StaticArray<u32>(dim + 1),
    new StaticArray<u32>(Math.round(nzPerRow * dim) as i32),
    new StaticArray<f32>(0)
  )

  unchecked((m.aRow[0] = 0))
  const nnzIthRowDoubled = (2 * m.nzPerRow) as i32
  const highBound = Math.min(m.numCols, nnzIthRowDoubled) as i32
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

    unchecked((m.aRow[i + 1] = (m.aRow[i] + nnzIthRow) as u32))

    // no realloc in static arrays
    if ((unchecked(m.aRow[i + 1]) as i32) > m.numNonZeros) {
      const temp = m.aCol
      m.aCol = new StaticArray<u32>(unchecked(m.aRow[i + 1])) // TA

      const length = temp.length
      for (let j = 0; j < length; j++) {
        unchecked((m.aCol[j] = temp[j]))
      }
    }

    for (let j = 0; j < m.numCols; j++) {
      unchecked((usedCols[j] = 0))
    }

    const castNnzIthRow: i32 = nnzIthRow as i32
    for (let j = 0; j < castNnzIthRow; ++j) {
      randCol = genRand(0, m.numCols - 1)
      if (unchecked(usedCols[randCol])) {
        --j
      } else {
        unchecked((m.aCol[unchecked(m.aRow[i]) + j] = randCol as u32))
        unchecked((usedCols[randCol as i32] = 1))
      }
    }
    // sort the column entries
    sortArray(m.aCol, m.aRow[i], m.aRow[i + 1]) // TA
  }

  m.numNonZeros = unchecked(m.aRow[m.numRows])
  m.densityPerc = (m.numNonZeros * 100.0) / (m.numCols * m.numRows)
  m.densityPpm = Math.round(m.densityPerc * 10000.0)

  m.ax = new StaticArray<f32>(m.numNonZeros)
  for (let i = 0; i < m.numNonZeros; ++i) {
    unchecked((m.ax[i] = randf() as f32))
    while (unchecked(m.ax[i] === 0.0)) {
      unchecked((m.ax[i] = randf() as f32))
    }
  }

  return m
}

function spmvCsr(
  matrix: StaticArray<f32>,
  dim: i32,
  rowv: StaticArray<u32>,
  colv: StaticArray<u32>,
  v: StaticArray<f32>,
  y: StaticArray<f32>,
  out: StaticArray<f32>
): void {
  let rowStart: i32, rowEnd: i32
  let sum: f32 = 0

  for (let i = 0; i < dim; ++i) {
    unchecked((sum = y[i]))
    unchecked((rowStart = rowv[i]))
    unchecked((rowEnd = rowv[i + 1]))

    for (let j = rowStart; j < rowEnd; ++j) {
      unchecked((sum += matrix[j] * v[colv[j]]))
    }
    unchecked((out[i] = sum))
  }
}

export function spmv(): f64 {
  const dim: i32 = 25000
  const density: i32 = 1000
  const stddev: f64 = 0.005
  const iterations: i32 = 50
  const m = generateRandomCSR(dim, density, stddev)
  const v = new StaticArray<f32>(dim)
  const y = new StaticArray<f32>(dim)
  const out = new StaticArray<f32>(dim)
  for (let i = 0; i < dim; i++) {
    unchecked((v[i] = randf() as f32))
  }

  const t1 = performance.now()
  for (let i = 0; i < iterations; ++i) {
    spmvCsr(m.ax, dim, m.aRow, m.aCol, v, y, out)
  }
  const t2 = performance.now()

  return t2 - t1
}
