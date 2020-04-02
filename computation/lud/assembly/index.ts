declare function consoleLog(msg: string): void;
declare function performanceNow(): f64;
export namespace console {
  export function log(msg: string): void { consoleLog(msg) }
}
export namespace performance {
  export function now(): f64 { return performanceNow() }
}

let seed: i32 = 49734321;

const expected_row_indices = [690, 9, 359, 36, 162, 515, 62, 35, 861, 335, 860,
  548, 533, 958, 317, 514, 414, 333, 537, 420, 347, 933, 356, 714, 958, 648, 391,
  536, 44, 965, 423, 962, 744, 434, 568, 463, 980, 905, 188, 541, 617, 216, 312,
  527, 760, 517, 638, 148, 756, 606, 174, 983, 30, 220, 721, 1001, 687, 355, 982,
  930, 534, 758, 177, 60, 841, 367, 22, 629, 468, 259, 327, 805, 491, 501, 160,
  750, 420, 664, 630, 841, 542, 114, 769, 590, 510, 635, 794, 259, 9, 715, 842,
  860, 469, 242, 731, 144, 980, 370, 344, 598];

const expected_col_indices = [313, 910, 273, 222, 524, 33, 803, 724, 980, 849,
  790, 770, 128, 677, 633, 287, 804, 709, 984, 450, 537, 439, 754, 677, 394, 344,
  361, 161, 418, 583, 1017, 45, 626, 241, 963, 620, 552, 604, 493, 459, 554, 699,
  15, 926, 47, 580, 674, 309, 834, 459, 840, 61, 23, 777, 624, 415, 765, 870,
  191, 185, 625, 107, 523, 663, 954, 771, 584, 775, 745, 777, 118, 918, 504, 892,
  547, 169, 360, 565, 978, 440, 741, 891, 259, 905, 730, 944, 579, 296, 93, 498,
  929, 48, 109, 903, 341, 659, 236, 0, 734, 475];

const expected_values = [-22.848189418846398979213, 0.486575877054862770965,
  2.350990332002380611698, 0.255936778601883629936, 0.369716886989750581627,
  0.436167974270290970118, 0.146278341558460728278, 0.065941041612251782844,
  -3.293335001426441976946, 1.676757766030180007988, 0.914670926671572570577,
  -1.449165223810348734901, -4.062626991062644243868, 8.053719449216675485559,
  -0.802856897069948227674, 1.286258895854830219818, 1.046663620982626996536,
  0.484603780235753345274, 2.177434960082209158827, -0.076253507783682866750,
  1.756722536293205738644, 0.540981804186463688389, 1.160877339446317879634,
  -0.500662762448355613820, -0.315089287598811773616, 1.487745379848905757925,
  -0.151896246268855089623, 0.656797241815350263394, 0.400712960066768264511,
  0.701017197177835504895, 21.239255832148906222301, 0.385402388730710976361,
  0.827099588440812327761, 3.322857338786085801274, 4.566630782122058640482,
  1.723268967613441171594, -0.245335815889943242851, 3.310282619080586741234,
  0.365940908008368537274, 0.573872758815816563782, -7.288906901332710575048,
  0.038431167008329936152, 0.028831025599041319729, 16.551345012895176012080,
  0.572626610991005424722, -5.040356494551264887605, 3.074688991682028138541,
  0.509559370036213876709, 1.344846005445668346567, -0.899161793412182497320,
  1.450843036958202159070, 0.707012750727151084718, 0.155740946804082569521,
  -20.622119724330712386973, 0.310740831317683263713, 4.021615405596988601644,
  0.832891886091167044093, 1.736708056130134680828, 1.908346944066334094359,
  6.004850895670037047580, -16.157750602775347914530, 0.163978793796913130398,
  -0.062671443842940877111, 0.929108185567632416380, 2.490843964912780705845,
  -0.066104762308228259826, 0.386981072535134362766, -0.823938825980013334060,
  0.526846622283516752283, -0.272223830142624412254, 0.378414255255514475618,
  -0.465486599242579401903, -0.420333065592308097180, -4.672003607431108207493,
  0.901549254898271534842, -0.684091977355238745062, 4.398443774587856403002,
  0.065205826885363540879, 5.423729935594375106689, -0.608124968949819821873,
  -45.149928055289088035806, 0.244564514518492037709, -4.507925769188863895920,
  56.208587041192998867700, -6.848970386253027342605, 1.248317846059819657967,
  0.457962760205558649940, 0.577264680902939586460, 0.987432966002931178373,
  -24.973096779128248101642, -2.795692544319765548977, 0.158278067517842180312,
  0.339449080878009679108, 1.889684533467393734441, 2.543604357651815917052,
  5.205758093407768960503, -0.241207430471430422925, 0.660969548700828801735,
  1.781811506239100006965, 1.750625326806120041212];

@inline
function commonRandom(): i32 {
  // Robert Jenkins' 32 bit integer hash function.
  seed = ((seed + 0x7ed55d16) + (seed << 12))  & 0xffffffff;
  seed = ((seed ^ 0xc761c23c) ^ (seed >>> 19)) & 0xffffffff;
  seed = ((seed + 0x165667b1) + (seed << 5))   & 0xffffffff;
  seed = ((seed + 0xd3a2646c) ^ (seed << 9))   & 0xffffffff;
  seed = ((seed + 0xfd7046c5) + (seed << 3))   & 0xffffffff;
  seed = ((seed ^ 0xb55a4f09) ^ (seed >>> 16)) & 0xffffffff;
  return seed;
}

const commonRandomJS = function (): f64 {
  const commonRand = commonRandom();
  return Math.abs(commonRand);
};

// function printMatrix(matrix){
//   const size = Math.sqrt(matrix.length);
//   for(let i = 0; i <size; ++i){
//     const row = [];
//     for(let j = 0; j < size; ++j){
//       row.push(matrix[i*size+j]);
//     }
//     console.log(row.join(" "));
//   }
// }

function randomMatrix(matrix: Float64Array): void {
  const size = Math.sqrt(matrix.length);
  console.log("Creating temp array of size " + size.toString());
  const l = new Float64Array(matrix.length);
  const u = new Float64Array(matrix.length);

  console.log("Creating l matrix");
  for (let i=0; i<size; ++i) {
    for (let j=0; j<size; ++j) {
      if (i > j) {
        unchecked(l[<i32> (i*size+j)] = commonRandomJS());
      } else if (i == j) {
        unchecked(l[<i32> (i*size+j)] = 1);
      } else {
        unchecked(l[<i32> (i*size+j)] = 0);
      }
    }
  }

  console.log("Creating u matrix");
  for (let j = 0; j < size; ++j) {
    for (let i = 0; i < size; ++i) {
      if (i > j) {
        unchecked(u[<i32> (j*size+i)] = 0);
      } else {
        unchecked(u[<i32> (j*size+i)] = commonRandomJS());
      }
    }
  }

  console.log("Creating input matrix");
  for (let i = 0; i < size; ++i){
    for (let j = 0; j < size; ++j) {
      let sum: f64 = 0;
      for (let k = 0; k < size; k++) {
        sum += unchecked(l[<i32> (i*size+k)]) * unchecked(u[<i32> (j*size+k)]);
      }
      unchecked(matrix[<i32> (i*size+j)] = sum);
    }
  }

  //printMatrix(matrix);
}

function lud(matrix: Float64Array, size: i32): void {
  let k: i32, sum: f64;

  for(let i=0; i<size; ++i){
    for(let j=i; j<size; ++j){
      sum = unchecked(matrix[i*size+j]);
      for (k=0; k<i; ++k) {
        sum -= unchecked(matrix[i*size+k])*unchecked(matrix[k*size+j]);
      }

      unchecked(matrix[i*size+j] = sum);
    }

    for (let j=i+1; j<size; j++){
      sum = unchecked(matrix[j*size+i]);
      for (k=0; k<i; ++k) sum -= unchecked(matrix[j*size+k]) * unchecked(matrix[k*size+i]);
      unchecked(matrix[j*size+i]=sum/matrix[i*size+i]);
    }
  }
}

// function ludVerify(m, lu) {
//   var size = Math.sqrt(m.length);
//   var tmp = new Float64Array(m.length);
//
//   for (var i=0; i<size; i++) {
//     for (var j=0; j<size; j++) {
//       var sum = 0;
//       var l,u;
//       for (var k=0; k<=Math.min(i,j); k++) {
//         if (i==k) {
//           l=1;
//         } else {
//           l=lu[i*size+k];
//         }
//         u=lu[k*size+j];
//         sum+=l*u;
//       }
//       tmp[i*size+j] = sum;
//     }
//   }
//
//   for (var i=0; i<size; i++) {
//     for (var j=0; j<size; j++) {
//       var a = m[i*size+j];
//       var b = tmp[i*size+j];
//       if (Math.abs(a-b)/Math.abs(a) > 0.00000000001) {
//         throw new Error("dismatch at (" + i + "," + j + "): (o)" + a + " (n)" + b);
//       }
//     }
//   }
//   console.log("For all practical purposes, the original matrix and the one computed from the LUD are identical");
// }

export function runLUD(size: i32, doVerify: bool): f64 {
  // doVerify = doVerify === undefined ? false : doVerify;
  const matrix = new Float64Array(size*size);
  console.log("Creating random matrix");
  randomMatrix(matrix);

  // if (doVerify) {
  //   const original = new Float64Array(matrix.length);
  //   for (let i=0; i < matrix.length; ++i) {
  //     original[i] = matrix[i];
  //   }
  // }

  const t1 = performance.now();
  lud(matrix, size);
  const t2 = performance.now();

  //printMatrix(matrix);
  // if (size === 1024) {
  //   for (let i = 0; i < 100; ++i) {
  //     if (expected_values[i] !== matrix[expected_row_indices[i]*size + expected_col_indices[i]]) {
  //       throw new Error(
  //         "ERROR: value at index (" + expected_row_indices[i] +
  //         "," + expected_col_indices[i] + ") = '" +
  //         matrix[expected_row_indices[i]*size + expected_col_indices[i]] +
  //         "' is different from the expected value '" +
  //         expected_values[i] + "'"
  //       );
  //     }
  //   }
  // } else {
  //   console.log("WARNING: No self-checking step for dimension '" + size + "'");
  // }

  // if (doVerify) {
  //   ludVerify(original, matrix);
  // }

  console.log("Time consumed untyped (s): " + ((t2-t1) / 1000).toString());
  return (t2-t1) / 1000;
}