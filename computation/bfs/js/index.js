if (typeof performance === "undefined") {
  performance = Date;
}

const MIN_NODES      = 20;
const MAX_NODES      = 1<<31;
const MIN_EDGES      = 2;
const MAX_INIT_EDGES = 4;
const MIN_WEIGHT     = 1;
const MAX_WEIGHT     = 1;

const commonRandom = (function() {
  let seed = 49734321;
  return function() {
    // Robert Jenkins' 32 bit integer hash function.
    seed = ((seed + 0x7ed55d16) + (seed << 12))  & 0xffffffff;
    seed = ((seed ^ 0xc761c23c) ^ (seed >>> 19)) & 0xffffffff;
    seed = ((seed + 0x165667b1) + (seed << 5))   & 0xffffffff;
    seed = ((seed + 0xd3a2646c) ^ (seed << 9))   & 0xffffffff;
    seed = ((seed + 0xfd7046c5) + (seed << 3))   & 0xffffffff;
    seed = ((seed ^ 0xb55a4f09) ^ (seed >>> 16)) & 0xffffffff;
    return seed;
  };
})();

function node(starting, no_of_edges) {
  return {
    "starting": starting,
    "no_of_edges": no_of_edges
  };
}


function edge(dest, weight) {
  return {
    "dest": dest,
    "weight": weight
  };
}

export function bfsGraph(no_of_nodes, verbose) {
  if (verbose === undefined) {
    verbose = false;
  }
  const expected_no_of_nodes = 3000000;
  const expected_total_cost = 26321966;
  let t1 = performance.now();
  const inits = initializeGraph(no_of_nodes);
  const h_graph_nodes = inits.h_graph_nodes;
  const h_graph_mask = inits.h_graph_mask;
  const h_updating_graph_mask = inits.h_updating_graph_mask;
  const h_graph_visited = inits.h_graph_visited;
  const h_cost = inits.h_cost;
  const h_graph_edges = inits.h_graph_edges;
  let t2 = performance.now();
  const init_time = t2 - t1;

  let k = 0;
  let stop;

  t1 = performance.now();
  do {
    stop = false;

    for(let tid = 0; tid < no_of_nodes; ++tid) {
      if (h_graph_mask[tid]) {
        h_graph_mask[tid] = false;
        for (let i = h_graph_nodes[tid].starting
          ; i < (h_graph_nodes[tid].no_of_edges + h_graph_nodes[tid].starting)
          ; ++i) {
          const id = h_graph_edges[i];
          if (!h_graph_visited[id]) {
            h_cost[id] = h_cost[tid] + 1;
            h_updating_graph_mask[id] = true;
          }
        }
      }
    }

    for (let tid = 0; tid < no_of_nodes; ++tid) {
      if (h_updating_graph_mask[tid]) {
        h_graph_mask[tid] = true;
        h_graph_visited[tid] = true;
        stop = true;
        h_updating_graph_mask[tid] = false;
      }
    }
    ++k;
  }
  while(stop);
  t2 = performance.now();
  const traversal_time = t2 - t1;

  let total_cost = 0;
  for (let i=0; i<no_of_nodes; ++i) {
    total_cost += h_cost[i];
  }
  // if (no_of_nodes == expected_no_of_nodes) {
  //   if (total_cost != expected_total_cost) {
  //     throw new Error("ERROR: the total cost obtained for '" + no_of_nodes + "' nodes is '" + total_cost + "' while the expected cost is '" + expected_total_cost + "'");
  //   }
  // } else {
  //   console.log("WARNING: no self-checking step for '" + no_of_nodes + "' nodes, only valid for '" + expected_no_of_nodes + "' nodes");
  // }
  //
  console.log("Init time     : " + init_time + " ms");
  console.log("Traversal time: " + traversal_time + " ms");
  //
  // if (verbose) {
  //   for (let i = 0; i < no_of_nodes; ++i) {
  //     console.log(i + ") cost: " + h_cost[i]);
  //   }
  // }

  return "Graph with nodes: " + no_of_nodes + " took " + traversal_time + " ms";
}

export function initializeGraph(no_of_nodes) {
  const h_graph_nodes = new Array(no_of_nodes);
  const h_graph_mask = new Uint8Array(no_of_nodes);
  const h_updating_graph_mask = new Uint8Array(no_of_nodes);
  const h_graph_visited = new Uint8Array(no_of_nodes);
  const h_cost = new Uint32Array(no_of_nodes);

  const source = 0;
  const graph = new Array(no_of_nodes);
  for (let i = 0; i < no_of_nodes; ++i) {
    graph[i] = [];
  }

  for (let i = 0; i < no_of_nodes; ++i) {
    const no_of_edges = Math.abs(commonRandom() % ( MAX_INIT_EDGES - MIN_EDGES + 1 )) + MIN_EDGES;
    for (let j = 0; j < no_of_edges; ++j) {
      const node_id = Math.abs(commonRandom() % no_of_nodes);
      const weight = Math.abs(commonRandom() % ( MAX_WEIGHT - MIN_WEIGHT + 1 )) + MIN_WEIGHT;

      graph[i].push(edge(node_id, weight));
      graph[node_id].push(edge(i, weight));
    }
  }

  let total_edges = 0;
  for (let i = 0; i < no_of_nodes; ++i) {
    const no_of_edges = graph[i].length;
    h_graph_nodes[i] = node(total_edges, no_of_edges);
    h_graph_mask[i] = false;
    h_updating_graph_mask[i] = false;
    h_graph_visited[i] = false;

    total_edges += no_of_edges;
  }

  h_graph_mask[source] = true;
  h_graph_visited[source] = true;

  const h_graph_edges = new Array(total_edges);

  let k = 0;
  for (let i = 0; i < no_of_nodes; ++i) {
    for (let j = 0; j < graph[i].length; ++j) {
      h_graph_edges[k] = graph[i][j].dest;
      ++k;
    }
  }

  for (let i = 0; i < no_of_nodes; ++i) {
    h_cost[i] = -1;
  }
  h_cost[source] = 0;

  return {
    h_graph_nodes: h_graph_nodes,
    h_graph_mask: h_graph_mask,
    h_updating_graph_mask: h_updating_graph_mask,
    h_graph_visited: h_graph_visited,
    h_cost: h_cost,
    h_graph_edges: h_graph_edges
  }
}