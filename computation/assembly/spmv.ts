import { performance, commonRandomJS } from './common'

// classes
class Csr {
  constructor(
    public num_rows: i32,
    public num_cols: i32,
    public density_perc: f64,
    public density_ppm: f64,
    public nz_per_row: f64,
    public num_nonzeros: i32,
    public stdev: f64,
    public Arow: StaticArray<u32>,
    public Acol: StaticArray<u32>,
    public Ax: StaticArray<f32>
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
    // compilation breaks without this statement
    return 0.0
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
function genRand(lb: i32, hb: i32): i32 {
  if (lb < 0 || hb < 0 || hb < lb) return 0
  const range = hb - lb + 1
  const r = rand()
  const result = (r % range) + lb
  return result as i32
}

// @ts-ignore: decorator
@inline
function rand(): i64 {
  const n = commonRandomJS() * (Math.pow(2, 32) - 1)
  return (Math.floor(n) ? Math.floor(n) : Math.ceil(n)) as i64
}

// @ts-ignore: decorator
@inline
function randf(): f64 {
  return 1.0 - 2.0 * (<f64>rand() / (2147483647 + 1.0))
}

function sortArray(a: StaticArray<u32>, start: u32, finish: u32): void {
  const t = a.slice(start, finish).sort()
  for (let i = start; i < finish; ++i) {
    unchecked((a[i] = t[i - start]))
  }
}

function generateRandomCSR(dim: i32, density: i32, stddev: f64): Csr {
  let nnz_ith_row: f64, rand_col: i32
  let nnz_ith_row_double: f64, nz_per_row_doubled: i32, high_bound: i32
  let used_cols: Int8Array

  const density_perc = density / 10000.0
  const nz_per_row = (dim * density) / 1000000
  const num_nonzeros = <i32>Math.round(nz_per_row * dim)
  const newStdev = stddev * nz_per_row

  const m = new Csr(
    dim,
    dim,
    density_perc,
    0,
    nz_per_row,
    num_nonzeros,
    newStdev,
    new StaticArray<u32>(dim + 1),
    new StaticArray<u32>(<i32>Math.round(nz_per_row * dim)),
    new StaticArray<f32>(0)
  )

  unchecked((m.Arow[0] = 0))
  nz_per_row_doubled = <i32>(2 * m.nz_per_row)
  high_bound = <i32>Math.min(m.num_cols, nz_per_row_doubled)
  used_cols = new Int8Array(m.num_cols)

  for (let i = 0; i < m.num_rows; ++i) {
    nnz_ith_row_double = randNorm()
    nnz_ith_row_double *= m.stdev
    nnz_ith_row_double += m.nz_per_row

    if (nnz_ith_row_double < 0) {
      nnz_ith_row = 0
    } else if (nnz_ith_row_double > high_bound) {
      nnz_ith_row = high_bound
    } else {
      nnz_ith_row = Math.abs(Math.round(nnz_ith_row_double))
    }

    unchecked((m.Arow[i + 1] = <u32>(m.Arow[i] + nnz_ith_row)))

    // no realloc in static arrays
    if ((unchecked(m.Arow[i + 1]) as i32) > m.num_nonzeros) {
      const temp = m.Acol
      m.Acol = new StaticArray<u32>(unchecked(m.Arow[i + 1])) // TA

      const length = temp.length
      for (let j = 0; j < length; j++) {
        unchecked((m.Acol[j] = temp[j]))
      }
    }

    for (let j = 0; j < m.num_cols; j++) {
      unchecked((used_cols[j] = 0))
    }

    const cast_nnz_ith_row: i32 = <i32>nnz_ith_row
    for (let j = 0; j < cast_nnz_ith_row; ++j) {
      rand_col = genRand(0, m.num_cols - 1)
      if (unchecked(used_cols[rand_col])) {
        --j
      } else {
        unchecked((m.Acol[unchecked(m.Arow[i]) + j] = <u32>rand_col))
        unchecked((used_cols[<i32>rand_col] = 1))
      }
    }
    // sort the column entries
    sortArray(m.Acol, m.Arow[i], m.Arow[i + 1]) // TA
  }

  m.num_nonzeros = unchecked(m.Arow[m.num_rows])
  m.density_perc = (m.num_nonzeros * 100.0) / (m.num_cols * m.num_rows)
  m.density_ppm = Math.round(m.density_perc * 10000.0)

  m.Ax = new StaticArray<f32>(m.num_nonzeros)
  for (let i = 0; i < m.num_nonzeros; ++i) {
    unchecked((m.Ax[i] = <f32>randf()))
    while (unchecked(m.Ax[i] === 0.0)) {
      unchecked((m.Ax[i] = <f32>randf()))
    }
  }

  return m
}

function spmv_csr(
  matrix: StaticArray<f32>,
  dim: i32,
  rowv: StaticArray<u32>,
  colv: StaticArray<u32>,
  v: StaticArray<f32>,
  y: StaticArray<f32>,
  out: StaticArray<f32>
): void {
  let row_start: i32, row_end: i32
  let sum: f32 = 0

  for (let i = 0; i < dim; ++i) {
    unchecked((sum = y[i]))
    unchecked((row_start = rowv[i]))
    unchecked((row_end = rowv[i + 1]))

    for (let j = row_start; j < row_end; ++j) {
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
    unchecked((v[i] = <f32>randf()))
  }

  const t1 = performance.now()
  for (let i = 0; i < iterations; ++i) {
    spmv_csr(m.Ax, dim, m.Arow, m.Acol, v, y, out)
  }
  const t2 = performance.now()

  return t2 - t1
}
