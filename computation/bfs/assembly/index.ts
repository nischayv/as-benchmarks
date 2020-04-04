// The entry file of your WebAssembly module.
declare function consoleLog(arg0: string): void;
declare function performanceNow(): f64;

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

const MIN_NODES      = 20;
const MAX_NODES      = 1<<31;
const MIN_EDGES      = 2;
const MAX_INIT_EDGES = 4;
const MIN_WEIGHT     = 1;
const MAX_WEIGHT     = 1;

function commonRandom(): i32 {
  let seed = 49734321;
  // Robert Jenkins' 32 bit integer hash function.
  seed = ((seed + 0x7ed55d16) + (seed << 12))  & 0xffffffff;
  seed = ((seed ^ 0xc761c23c) ^ (seed >>> 19)) & 0xffffffff;
  seed = ((seed + 0x165667b1) + (seed << 5))   & 0xffffffff;
  seed = ((seed + 0xd3a2646c) ^ (seed << 9))   & 0xffffffff;
  seed = ((seed + 0xfd7046c5) + (seed << 3))   & 0xffffffff;
  seed = ((seed ^ 0xb55a4f09) ^ (seed >>> 16)) & 0xffffffff;
  return seed;
}

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

export function bfs(no_of_nodes: i32, verbose: bool): f64 {
  const expected_no_of_nodes = 3000000;
  const expected_total_cost = 26321966;
  let t1: f64, t2: f64;
  const inits = initializeGraph(no_of_nodes);
  const h_graph_nodes = inits.h_graph_nodes;
  const h_graph_mask = inits.h_graph_mask;
  const h_updating_graph_mask = inits.h_updating_graph_mask;
  const h_graph_visited = inits.h_graph_visited;
  const h_cost = inits.h_cost;
  const h_graph_edges = inits.h_graph_edges;

  let k = 0;
  let stop: boolean;

  t1 = performanceNow();
  do {
    stop = false;

    for(let tid = 0; tid < no_of_nodes; ++tid) {
      if (unchecked(h_graph_mask[tid])) {
        unchecked(h_graph_mask[tid] = false);
        const cost = unchecked(h_cost[tid]);
        for (let i = unchecked(h_graph_nodes[tid].starting); i < (unchecked(h_graph_nodes[tid].no_of_edges) + unchecked(h_graph_nodes[tid].starting)); ++i) {
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
  t2 = performanceNow();
  // const traversal_time = t2 - t1;

  // let total_cost = 0;
  // for (let i=0; i<no_of_nodes; ++i) {
  //   unchecked(total_cost += h_cost[i]);
  // }
  // if (no_of_nodes == expected_no_of_nodes) {
  //   if (total_cost != expected_total_cost) {
  //     consoleLog("ERROR: the total cost obtained for '" + no_of_nodes.toString() + "' nodes is '" + total_cost.toString() + "' while the expected cost is '" + expected_total_cost.toString() + "'");
  //   }
  // } else {
  //   consoleLog("WARNING: no self-checking step for '" + no_of_nodes.toString() + "' nodes, only valid for '" + expected_no_of_nodes.toString() + "' nodes");
  // }

  // consoleLog("Init time     : " + init_time.toString() + " ms");
  // consoleLog("AS traversal time: " + traversal_time.toString() + " ms");

  // if (verbose) {
  //   for (let i = 0; i < no_of_nodes; ++i) {
  //     consoleLog(i.toString() + ") cost: " + unchecked(h_cost[i].toString()));
  //   }
  // }

  return t2 -t1;
}
