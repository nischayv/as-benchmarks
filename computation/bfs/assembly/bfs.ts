import { performance, commonRandom } from './common'

// classes
class Node {
  constructor(public starting: i32 = 0, public no_of_edges: i32 = 0) { }
}

class Edge {
  constructor(public dest: f64 = 0, public weight: f64 = 0) { }
}

class Graph {
  constructor(
    public h_graph_nodes: StaticArray<Node>,
    public h_graph_mask: StaticArray<boolean>,
    public h_updating_graph_mask: StaticArray<boolean>,
    public h_graph_visited: StaticArray<boolean>,
    public h_cost: StaticArray<i32>,
    public h_graph_edges: StaticArray<i32>
  ) { }
}

const MIN_EDGES      = 2;
const MAX_INIT_EDGES = 4;
const MIN_WEIGHT     = 1;
const MAX_WEIGHT     = 1;

export function initializeGraph(no_of_nodes: i32): Graph {
  const h_graph_nodes = new StaticArray<Node>(no_of_nodes);
  const h_graph_mask = new StaticArray<boolean>(no_of_nodes);
  const h_updating_graph_mask = new StaticArray<boolean>(no_of_nodes);
  const h_graph_visited = new StaticArray<boolean>(no_of_nodes);
  const h_cost = new StaticArray<i32>(no_of_nodes);

  const source = 0;
  const graph = new StaticArray<Array<Edge>>(no_of_nodes);
  for (let i = 0; i < no_of_nodes; ++i) {
    unchecked(graph[i] = new Array<Edge>());
  }

  for (let i = 0; i < no_of_nodes; ++i) {
    const no_of_edges = Math.abs(commonRandom() % ( MAX_INIT_EDGES - MIN_EDGES + 1 )) + MIN_EDGES;
    const ithRow = unchecked(graph[i]);

    for (let j = 0; j < no_of_edges; ++j) {
      const node_id = Math.abs(commonRandom() % no_of_nodes);
      const weight = Math.abs(commonRandom() % ( MAX_WEIGHT - MIN_WEIGHT + 1 )) + MIN_WEIGHT;

      unchecked(ithRow.push(new Edge(node_id, weight)));
      unchecked(graph[<i32> node_id].push(new Edge(i, weight)));
    }
  }

  let total_edges = 0;
  for (let i = 0; i < no_of_nodes; ++i) {
    const no_of_edges = unchecked(graph[i].length);
    unchecked(h_graph_nodes[i] = new Node(total_edges, no_of_edges));
    unchecked(h_graph_mask[i] = false);
    unchecked(h_updating_graph_mask[i] = false);
    unchecked(h_graph_visited[i] = false);
    total_edges += no_of_edges;
  }

  unchecked(h_graph_mask[source] = true);
  unchecked(h_graph_visited[source] = true);

  const h_graph_edges = new StaticArray<i32>(total_edges);

  let k = 0;
  for (let i = 0; i < no_of_nodes; ++i) {
    const len = unchecked(graph[i].length);
    const row = unchecked(graph[i]);
    for (let j = 0; j < len; ++j) {
      unchecked(h_graph_edges[k] = <i32> row[j].dest);
      ++k;
    }
  }

  for (let i = 0; i < no_of_nodes; ++i) {
    unchecked(h_cost[i] = -1);
  }
  unchecked(h_cost[source] = 0);

  return new Graph(
    h_graph_nodes,
    h_graph_mask,
    h_updating_graph_mask,
    h_graph_visited,
    h_cost,
    h_graph_edges
  )
}

export function bfs(): f64 {
  const no_of_nodes: i32 = 500000;
  const inits = initializeGraph(no_of_nodes);
  const h_graph_nodes = inits.h_graph_nodes;
  const h_graph_mask = inits.h_graph_mask;
  const h_updating_graph_mask = inits.h_updating_graph_mask;
  const h_graph_visited = inits.h_graph_visited;
  const h_cost = inits.h_cost;
  const h_graph_edges = inits.h_graph_edges;

  let k = 0;
  let stop: boolean;

  const t1 = performance.now();
  do {
    stop = false;

    for(let tid = 0; tid < no_of_nodes; ++tid) {
      if (unchecked(h_graph_mask[tid])) {
        unchecked(h_graph_mask[tid] = false);
        const cost = unchecked(h_cost[tid]);
        const start = unchecked(h_graph_nodes[tid].starting);
        const end = unchecked(h_graph_nodes[tid].no_of_edges + h_graph_nodes[tid].starting);
        for (let i = start; i < end; ++i) {
          const id = unchecked(h_graph_edges[i]);
          if (!unchecked(h_graph_visited[id])) {
            unchecked(h_cost[id] = cost + 1);
            unchecked(h_updating_graph_mask[id] = true);
          }
        }
      }
    }

    for (let tid = 0; tid < no_of_nodes; ++tid) {
      if (unchecked(h_updating_graph_mask[tid])) {
        unchecked(h_graph_mask[tid] = true);
        unchecked(h_graph_visited[tid] = true);
        stop = true;
        unchecked(h_updating_graph_mask[tid] = false);
      }
    }
    ++k;
  } while(stop);
  const t2 = performance.now();
  return t2 - t1;
}
