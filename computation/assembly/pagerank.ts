import { performance, commonRandom } from './common'

const dFactor: f32 = 0.85

// generates an array of random pages and their links
function randomPages(
  n: i32,
  nOutlinks: StaticArray<i32>,
  divisor: i32
): StaticArray<StaticArray<i32>> {
  let k: i32
  const pages = new StaticArray<StaticArray<i32>>(n) // matrix cell i,j means link from j->i

  for (let i = 0; i < n; i++) {
    unchecked((pages[i] = new StaticArray<i32>(n)))
  }

  for (let i = 0; i < n; i++) {
    unchecked((nOutlinks[i] = 0))
    const page = unchecked(pages[i])
    for (let j = 0; j < n; ++j) {
      if (i != j && Math.abs(commonRandom()) % divisor === 0) {
        unchecked((page[j] = 1))
        unchecked((nOutlinks[i] += 1))
      }
    }

    // the case with no outlinks is afunctioned
    if (nOutlinks[i] === 0) {
      do {
        k = (Math.abs(commonRandom()) % n) as i32
      } while (k === i)

      unchecked((page[k] = 1))
      unchecked((nOutlinks[i] = 1))
    }
  }

  return pages
}

function mapPageRank(
  pages: StaticArray<StaticArray<i32>>,
  pageRanks: StaticArray<f64>,
  maps: StaticArray<StaticArray<f64>>,
  nOutlinks: StaticArray<i32>,
  n: i32
): void {
  for (let i = 0; i < n; ++i) {
    const outboundRank = unchecked(pageRanks[i]) / unchecked(nOutlinks[i])
    const map = unchecked(maps[i])
    const page = unchecked(pages[i])
    for (let j = 0; j < n; ++j) {
      const p = unchecked(page[j])
      unchecked((map[j] = p === 0 ? 0 : p * outboundRank))
    }
  }
}

function reducePageRank(
  pageRanks: StaticArray<f64>,
  maps: StaticArray<StaticArray<f64>>,
  n: i32
): f64 {
  let i: i32, j: i32
  let dif: f64 = 0.0
  let newRank: f64, oldRank: f64

  const ranks = new StaticArray<f64>(n)
  for (i = 0; i < n; i++) {
    const map = unchecked(maps[i])
    for (j = 0; j < n; j++) {
      unchecked((ranks[j] += map[j]))
    }
  }

  for (i = 0; i < n; i++) {
    oldRank = unchecked(pageRanks[i])
    newRank = unchecked(ranks[i])
    newRank = (1 - dFactor) / n + dFactor * newRank
    dif = Math.abs(newRank - oldRank) > dif ? Math.abs(newRank - oldRank) : dif
    unchecked((pageRanks[i] = newRank))
  }

  return dif
}

export function pagerank(): f64 {
  const n: i32 = 1000
  const iter: i32 = 10
  const thresh: f64 = 0.00000001
  const divisor: i32 = 100000
  const maps = new StaticArray<StaticArray<f64>>(n)
  const pageRanks = new StaticArray<f64>(n)
  const nOutlinks = new StaticArray<i32>(n)
  let t: i32
  let maxDiff = Infinity

  for (let i = 0; i < n; i++) {
    unchecked((maps[i] = new StaticArray<f64>(n)))
  }

  const pages = randomPages(n, nOutlinks, divisor)

  for (let i = 0; i < n; ++i) {
    unchecked((pageRanks[i] = 1.0 / n))
  }

  let nbLinks = 0
  for (let i = 0; i < n; ++i) {
    const page = pages[i]
    for (let j = 0; j < n; ++j) {
      nbLinks += unchecked(page[j])
    }
  }

  const t1 = performance.now()
  for (t = 1; t <= iter && maxDiff >= thresh; ++t) {
    mapPageRank(pages, pageRanks, maps, nOutlinks, n)
    maxDiff = reducePageRank(pageRanks, maps, n)
  }
  const t2 = performance.now()
  return t2 - t1
}
