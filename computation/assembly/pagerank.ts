import { performance, commonRandom } from './common'

const d_factor: f32 = 0.85

// generates an array of random pages and their links
function random_pages(
  n: i32,
  noutlinks: StaticArray<i32>,
  divisor: i32
): StaticArray<StaticArray<i32>> {
  let k: i32
  const pages = new StaticArray<StaticArray<i32>>(n) // matrix cell i,j means link from j->i

  for (let i = 0; i < n; i++) {
    unchecked((pages[i] = new StaticArray<i32>(n)))
  }

  for (let i = 0; i < n; i++) {
    unchecked((noutlinks[i] = 0))
    const page = unchecked(pages[i])
    for (let j = 0; j < n; ++j) {
      if (i != j && Math.abs(commonRandom()) % divisor === 0) {
        unchecked((page[j] = 1))
        unchecked((noutlinks[i] += 1))
      }
    }

    // the case with no outlinks is afunctioned
    if (noutlinks[i] === 0) {
      do {
        k = <i32>Math.abs(commonRandom()) % n
      } while (k === i)

      unchecked((page[k] = 1))
      unchecked((noutlinks[i] = 1))
    }
  }

  return pages
}

function map_page_rank(
  pages: StaticArray<StaticArray<i32>>,
  page_ranks: StaticArray<f64>,
  maps: StaticArray<StaticArray<f64>>,
  noutlinks: StaticArray<i32>,
  n: i32
): void {
  for (let i = 0; i < n; ++i) {
    const outbound_rank = unchecked(page_ranks[i]) / unchecked(noutlinks[i])
    const map = unchecked(maps[i])
    const page = unchecked(pages[i])
    for (let j = 0; j < n; ++j) {
      if (unchecked(page[j]) === 0) {
        unchecked((map[j] = 0))
      } else {
        unchecked((map[j] = unchecked(page[j]) * outbound_rank))
      }
    }
  }
}

function reduce_page_rank(
  page_ranks: StaticArray<f64>,
  maps: StaticArray<StaticArray<f64>>,
  n: i32
): f64 {
  let i: i32, j: i32
  let dif: f64 = 0.0
  let new_rank: f64, old_rank: f64

  const ranks = new StaticArray<f64>(n)
  for (i = 0; i < n; i++) {
    const map = unchecked(maps[i])
    for (j = 0; j < n; j++) {
      unchecked((ranks[j] += map[j]))
    }
  }

  for (i = 0; i < n; i++) {
    old_rank = unchecked(page_ranks[i])
    new_rank = unchecked(ranks[i])
    new_rank = (1 - d_factor) / n + d_factor * new_rank
    dif = Math.abs(new_rank - old_rank) > dif ? Math.abs(new_rank - old_rank) : dif
    unchecked((page_ranks[i] = new_rank))
  }

  return dif
}

export function pagerank(): f64 {
  const n: i32 = 1000
  const iter: i32 = 10
  const thresh: f64 = 0.00000001
  const divisor: i32 = 100000
  let pages: StaticArray<StaticArray<i32>>
  const maps = new StaticArray<StaticArray<f64>>(n)
  const page_ranks = new StaticArray<f64>(n)
  const noutlinks = new StaticArray<i32>(n)
  let t: i32
  let max_diff = Infinity

  for (let i = 0; i < n; i++) {
    unchecked((maps[i] = new StaticArray<f64>(n)))
  }

  pages = random_pages(n, noutlinks, divisor)

  for (let i = 0; i < n; ++i) {
    unchecked((page_ranks[i] = 1.0 / n))
  }

  let nb_links = 0
  for (let i = 0; i < n; ++i) {
    const page = pages[i]
    for (let j = 0; j < n; ++j) {
      nb_links += unchecked(page[j])
    }
  }

  const t1 = performance.now()
  for (t = 1; t <= iter && max_diff >= thresh; ++t) {
    map_page_rank(pages, page_ranks, maps, noutlinks, n)
    max_diff = reduce_page_rank(page_ranks, maps, n)
  }
  const t2 = performance.now()
  return t2 - t1
}
