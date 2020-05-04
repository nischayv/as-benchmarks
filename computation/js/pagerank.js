import { commonRandom } from './common'

const dFactor = 0.85 //damping factor

// generates an array of random pages and their links
function randomPages(n, nOutlinks, divisor) {
  const pages = [] // matrix cell i,j means link from j->i
  let k
  for (let i = 0; i < n; i++) {
    pages[i] = new Int32Array(n)
  }

  for (let i = 0; i < n; i++) {
    nOutlinks[i] = 0
    for (let j = 0; j < n; ++j) {
      if (i !== j && Math.abs(commonRandom()) % divisor === 0) {
        pages[i][j] = 1
        nOutlinks[i] += 1
      }
    }

    // the case with no outlinks is afunctioned
    if (nOutlinks[i] === 0) {
      do {
        k = Math.abs(commonRandom()) % n
      } while (k === i)
      pages[i][k] = 1
      nOutlinks[i] = 1
    }
  }
  return pages
}

function mapPageRank(pages, pageRanks, maps, nOutlinks, n) {
  for (let i = 0; i < n; ++i) {
    const outboundRank = pageRanks[i] / nOutlinks[i]
    const map = maps[i]
    const page = pages[i]
    for (let j = 0; j < n; ++j) {
      const p = page[j]
      map[j] = p === 0 ? 0 : p * outboundRank
    }
  }
}

function reducePageRank(pageRanks, maps, n) {
  let i, j
  let dif = 0.0
  let newRank, oldRank

  const ranks = new Float64Array(n)
  for (i = 0; i < n; i++) {
    const map = maps[i]
    for (j = 0; j < n; j++) {
      ranks[j] += map[j]
    }
  }

  for (i = 0; i < n; i++) {
    oldRank = pageRanks[i]
    newRank = ranks[i]
    newRank = (1 - dFactor) / n + dFactor * newRank
    dif = Math.abs(newRank - oldRank) > dif ? Math.abs(newRank - oldRank) : dif
    pageRanks[i] = newRank
  }

  return dif
}

export function pagerank(n = 1000, iter = 10, thresh = 0.00000001, divisor = 100000) {
  const maps = new Array(n)
  let t
  let maxDiff = Infinity

  const pageRanks = new Float64Array(n)
  const nOutlinks = new Int32Array(n)
  for (let i = 0; i < n; i++) {
    maps[i] = new Float64Array(n)
  }

  const pages = randomPages(n, nOutlinks, divisor)

  for (let i = 0; i < n; ++i) {
    pageRanks[i] = 1.0 / n
  }

  let nbLinks = 0
  for (let i = 0; i < n; ++i) {
    const page = pages[i]
    for (let j = 0; j < n; ++j) {
      nbLinks += page[j]
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
