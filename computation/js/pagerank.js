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

function initArray(a, n, val) {
  for (let i = 0; i < n; ++i) {
    a[i] = val
  }
}

function mapPageRank(pages, pageRanks, maps, nOutlinks, n) {
  for (let i = 0; i < n; ++i) {
    const outboundRank = pageRanks[i] / nOutlinks[i]
    for (let j = 0; j < n; ++j) {
      maps[i][j] = pages[i][j] === 0 ? 0 : pages[i][j] * outboundRank
    }
  }
}

function reducePageRank(pageRanks, maps, n) {
  let dif = 0.0
  let newRank, oldRank

  for (let j = 0; j < n; ++j) {
    oldRank = pageRanks[j]
    newRank = 0.0
    for (let i = 0; i < n; ++i) {
      newRank += maps[i][j]
    }

    newRank = (1 - dFactor) / n + dFactor * newRank
    dif = Math.abs(newRank - oldRank) > dif ? Math.abs(newRank - oldRank) : dif
    pageRanks[j] = newRank
  }
  return dif
}

export function pagerank(n = 1000, iter = 10, thresh = 0.00000001, divisor = 100000) {
  const maps = []
  let t
  let maxDiff = Infinity

  const pageRanks = new Float64Array(n)
  for (let i = 0; i < n; i++) {
    maps[i] = new Float64Array(n)
  }
  const nOutlinks = new Int32Array(n)

  const pages = randomPages(n, nOutlinks, divisor)
  initArray(pageRanks, n, 1.0 / n)

  let nbLinks = 0
  for (let i = 0; i < n; ++i) {
    for (let j = 0; j < n; ++j) {
      nbLinks += pages[i][j]
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
