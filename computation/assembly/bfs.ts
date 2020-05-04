import { performance, commonRandom } from './common'

// classes
class Node {
  constructor(public starting: i32 = 0, public numOfEdges: i32 = 0) {}
}

class Edge {
  constructor(public dest: f64 = 0, public weight: f64 = 0) {}
}

class Graph {
  constructor(
    public hGraphNodes: StaticArray<Node>,
    public hGraphMask: StaticArray<boolean>,
    public hUpdatingGraphMask: StaticArray<boolean>,
    public hGraphVisited: StaticArray<boolean>,
    public hCost: StaticArray<i32>,
    public hGraphEdges: StaticArray<i32>
  ) {}
}

const MIN_EDGES = 2
const MAX_INIT_EDGES = 4
const MIN_WEIGHT = 1
const MAX_WEIGHT = 1

export function initializeGraph(numOfNodes: i32): Graph {
  const hGraphNodes = new StaticArray<Node>(numOfNodes)
  const hGraphMask = new StaticArray<boolean>(numOfNodes)
  const hUpdatingGraphMask = new StaticArray<boolean>(numOfNodes)
  const hGraphVisited = new StaticArray<boolean>(numOfNodes)
  const hCost = new StaticArray<i32>(numOfNodes)

  const source = 0
  const graph = new StaticArray<Array<Edge>>(numOfNodes)
  for (let i = 0; i < numOfNodes; ++i) {
    unchecked((graph[i] = new Array<Edge>()))
  }

  for (let i = 0; i < numOfNodes; ++i) {
    const numOfEdges = Math.abs(commonRandom() % (MAX_INIT_EDGES - MIN_EDGES + 1)) + MIN_EDGES
    const ithRow = unchecked(graph[i])

    for (let j = 0; j < numOfEdges; ++j) {
      const nodeId = Math.abs(commonRandom() % numOfNodes)
      const weight = Math.abs(commonRandom() % (MAX_WEIGHT - MIN_WEIGHT + 1)) + MIN_WEIGHT

      unchecked(ithRow.push(new Edge(nodeId, weight)))
      unchecked(graph[nodeId as i32].push(new Edge(i, weight)))
    }
  }

  let totalEdges = 0
  for (let i = 0; i < numOfNodes; ++i) {
    const numOfEdges = unchecked(graph[i].length)
    unchecked((hGraphNodes[i] = new Node(totalEdges, numOfEdges)))
    unchecked((hGraphMask[i] = false))
    unchecked((hUpdatingGraphMask[i] = false))
    unchecked((hGraphVisited[i] = false))
    totalEdges += numOfEdges
  }

  unchecked((hGraphMask[source] = true))
  unchecked((hGraphVisited[source] = true))

  const hGraphEdges = new StaticArray<i32>(totalEdges)

  let k = 0
  for (let i = 0; i < numOfNodes; ++i) {
    const len = unchecked(graph[i].length)
    const row = unchecked(graph[i])
    for (let j = 0; j < len; ++j) {
      unchecked((hGraphEdges[k] = row[j].dest as i32))
      k += 1
    }
  }

  for (let i = 0; i < numOfNodes; ++i) {
    unchecked((hCost[i] = -1))
  }
  unchecked((hCost[source] = 0))

  return new Graph(hGraphNodes, hGraphMask, hUpdatingGraphMask, hGraphVisited, hCost, hGraphEdges)
}

export function bfs(): f64 {
  const numOfNodes = 500000
  const inits = initializeGraph(numOfNodes)
  const hGraphNodes = inits.hGraphNodes
  const hGraphMask = inits.hGraphMask
  const hUpdatingGraphMask = inits.hUpdatingGraphMask
  const hGraphVisited = inits.hGraphVisited
  const hCost = inits.hCost
  const hGraphEdges = inits.hGraphEdges

  let k = 0
  let stop: boolean

  const t1 = performance.now()
  do {
    stop = false

    for (let tid = 0; tid < numOfNodes; ++tid) {
      if (unchecked(hGraphMask[tid])) {
        unchecked((hGraphMask[tid] = false))
        const cost = unchecked(hCost[tid])
        const node = unchecked(hGraphNodes[tid])
        const start = node.starting
        const end = node.numOfEdges + start
        for (let i = start; i < end; ++i) {
          const id = unchecked(hGraphEdges[i])
          if (!unchecked(hGraphVisited[id])) {
            unchecked((hCost[id] = cost + 1))
            unchecked((hUpdatingGraphMask[id] = true))
          }
        }
      }
    }

    for (let tid = 0; tid < numOfNodes; ++tid) {
      if (unchecked(hUpdatingGraphMask[tid])) {
        unchecked((hGraphMask[tid] = true))
        unchecked((hGraphVisited[tid] = true))
        stop = true
        unchecked((hUpdatingGraphMask[tid] = false))
      }
    }
    ++k
  } while (stop)
  const t2 = performance.now()
  return t2 - t1
}
