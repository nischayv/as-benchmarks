import { commonRandom } from './common'

const MIN_EDGES = 2
const MAX_INIT_EDGES = 4
const MIN_WEIGHT = 1
const MAX_WEIGHT = 1

function node(starting, numOfEdges) {
  return {
    starting: starting,
    numOfEdges: numOfEdges
  }
}

function edge(dest, weight) {
  return {
    dest: dest,
    weight: weight
  }
}

function initializeGraph(numOfNodes) {
  const hGraphNodes = new Array(numOfNodes)
  const hGraphMask = new Uint8Array(numOfNodes)
  const hUpdatingGraphMask = new Uint8Array(numOfNodes)
  const hGraphVisited = new Uint8Array(numOfNodes)
  const hCost = new Uint32Array(numOfNodes)

  const source = 0
  const graph = new Array(numOfNodes)
  for (let i = 0; i < numOfNodes; ++i) {
    graph[i] = []
  }

  for (let i = 0; i < numOfNodes; ++i) {
    const numOfEdges = Math.abs(commonRandom() % (MAX_INIT_EDGES - MIN_EDGES + 1)) + MIN_EDGES
    for (let j = 0; j < numOfEdges; ++j) {
      const nodeId = Math.abs(commonRandom() % numOfNodes)
      const weight = Math.abs(commonRandom() % (MAX_WEIGHT - MIN_WEIGHT + 1)) + MIN_WEIGHT

      graph[i].push(edge(nodeId, weight))
      graph[nodeId].push(edge(i, weight))
    }
  }

  let totalEdges = 0
  for (let i = 0; i < numOfNodes; ++i) {
    const numOfEdges = graph[i].length
    hGraphNodes[i] = node(totalEdges, numOfEdges)
    hGraphMask[i] = false
    hUpdatingGraphMask[i] = false
    hGraphVisited[i] = false
    totalEdges += numOfEdges
  }

  hGraphMask[source] = true
  hGraphVisited[source] = true

  const hGraphEdges = new Array(totalEdges)

  let k = 0
  for (let i = 0; i < numOfNodes; ++i) {
    for (let j = 0; j < graph[i].length; ++j) {
      hGraphEdges[k] = graph[i][j].dest
      ++k
    }
  }

  for (let i = 0; i < numOfNodes; ++i) {
    hCost[i] = -1
  }
  hCost[source] = 0

  return {
    hGraphNodes: hGraphNodes,
    hGraphMask: hGraphMask,
    hUpdatingGraphMask: hUpdatingGraphMask,
    hGraphVisited: hGraphVisited,
    hCost: hCost,
    hGraphEdges: hGraphEdges
  }
}

export function bfs(numOfNodes = 500000) {
  const inits = initializeGraph(numOfNodes)
  const hGraphNodes = inits.hGraphNodes
  const hGraphMask = inits.hGraphMask
  const hUpdatingGraphMask = inits.hUpdatingGraphMask
  const hGraphVisited = inits.hGraphVisited
  const hCost = inits.hCost
  const hGraphEdges = inits.hGraphEdges

  let k = 0
  let stop

  const t1 = performance.now()
  do {
    stop = false

    for (let tid = 0; tid < numOfNodes; ++tid) {
      if (hGraphMask[tid]) {
        hGraphMask[tid] = false
        for (
          let i = hGraphNodes[tid].starting;
          i < hGraphNodes[tid].numOfEdges + hGraphNodes[tid].starting;
          ++i
        ) {
          const id = hGraphEdges[i]
          if (!hGraphVisited[id]) {
            hCost[id] = hCost[tid] + 1
            hUpdatingGraphMask[id] = true
          }
        }
      }
    }

    for (let tid = 0; tid < numOfNodes; ++tid) {
      if (hUpdatingGraphMask[tid]) {
        hGraphMask[tid] = true
        hGraphVisited[tid] = true
        stop = true
        hUpdatingGraphMask[tid] = false
      }
    }
    ++k
  } while (stop)
  const t2 = performance.now()
  return t2 - t1
}
