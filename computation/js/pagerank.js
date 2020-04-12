import { commonRandom } from './common';

const d_factor = 0.85; //damping factor

// generates an array of random pages and their links
function random_pages(n, noutlinks, divisor) {
  const pages = [];  // matrix cell i,j means link from j->i
  let k;
  for (let i = 0; i < n; i++) {
    pages[i] = new Int32Array(n);
  }

  for(let i = 0; i < n; i++) {
    noutlinks[i] = 0;
    for(let j = 0; j < n; ++j) {
      if(i!==j && (Math.abs(commonRandom())%divisor === 0)) {
        pages[i][j] = 1;
        noutlinks[i] += 1;
      }
    }

    // the case with no outlinks is afunctioned
    if(noutlinks[i] === 0) {
      do { k = Math.abs(commonRandom()) % n; } while ( k === i);
      pages[i][k] = 1;
      noutlinks[i] = 1;
    }
  }
  return pages;
}

function init_array(a, n, val) {
  for(let i = 0; i < n; ++i) {
    a[i] = val;
  }
}

function map_page_rank(pages, page_ranks, maps, noutlinks, n) {
  for(let i = 0; i < n; ++i) {
    const outbound_rank = page_ranks[i]/noutlinks[i];
    for(let j = 0; j < n; ++j) {
      maps[i][j] = pages[i][j] === 0 ? 0 : pages[i][j]*outbound_rank;
    }
  }
}

function reduce_page_rank(page_ranks, maps, n) {
  let dif = 0.0;
  let new_rank, old_rank;

  for(let j=0; j<n; ++j) {
    old_rank = page_ranks[j];
    new_rank = 0.0;
    for(let i=0; i<n; ++i) {
      new_rank += maps[i][j];
    }

    new_rank = ((1-d_factor)/n)+(d_factor*new_rank);
    dif = Math.abs(new_rank - old_rank) > dif ? Math.abs(new_rank - old_rank) : dif;
    page_ranks[j] = new_rank;
  }
  return dif;
}

export function pagerank(n = 1000, iter = 10, thresh = 0.00000001, divisor = 100000) {
  let pages;
  let maps = [];
  let page_ranks;
  let noutlinks;
  let t;
  let max_diff = Infinity;

  page_ranks = new Float64Array(n);
  for (let i = 0; i < n; i++) {
    maps[i] = new Float64Array(n);
  }
  noutlinks = new Int32Array(n);

  pages = random_pages(n,noutlinks, divisor);
  init_array(page_ranks, n, 1.0 / n);


  let nb_links = 0;
  for (let i = 0; i < n; ++i) {
    for (let j = 0; j < n; ++j) {
      nb_links += pages[i][j];
    }
  }

  const t1 = performance.now();
  for(t=1; t <= iter && max_diff >= thresh; ++t) {
    map_page_rank(pages, page_ranks, maps, noutlinks, n);
    max_diff = reduce_page_rank(page_ranks, maps, n);

  }
  const t2 = performance.now();
  return t2 - t1;
}