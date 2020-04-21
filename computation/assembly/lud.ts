import { performance, commonRandomJS } from './common'

function randomMatrix(matrix: StaticArray<f64>): void {
  const size = Math.sqrt(matrix.length)
  const l = new StaticArray<f64>(matrix.length)
  const u = new StaticArray<f64>(matrix.length)

  for (let i = 0; i < size; ++i) {
    for (let j = 0; j < size; ++j) {
      if (i > j) {
        unchecked((l[(i * size + j) as i32] = commonRandomJS()))
      } else if (i == j) {
        unchecked((l[(i * size + j) as i32] = 1))
      } else {
        unchecked((l[(i * size + j) as i32] = 0))
      }
    }
  }

  for (let j = 0; j < size; ++j) {
    for (let i = 0; i < size; ++i) {
      if (i > j) {
        unchecked((u[(j * size + i) as i32] = 0))
      } else {
        unchecked((u[(j * size + i) as i32] = commonRandomJS()))
      }
    }
  }

  for (let i = 0; i < size; ++i) {
    for (let j = 0; j < size; ++j) {
      let sum: f64 = 0
      for (let k = 0; k < size; k++) {
        sum += unchecked(l[(i * size + k) as i32]) * unchecked(u[(j * size + k) as i32])
      }
      unchecked((matrix[(i * size + j) as i32] = sum))
    }
  }
}

function performLud(matrix: StaticArray<f64>, size: i32): void {
  let k: i32, sum: f64

  for (let i = 0; i < size; ++i) {
    for (let j = i; j < size; ++j) {
      unchecked((sum = matrix[i * size + j]))
      for (k = 0; k < i; ++k) {
        unchecked((sum -= matrix[i * size + k] * matrix[k * size + j]))
      }

      unchecked((matrix[i * size + j] = sum))
    }

    for (let j = i + 1; j < size; j++) {
      unchecked((sum = matrix[j * size + i]))
      for (k = 0; k < i; ++k) {
        unchecked((sum -= matrix[j * size + k] * matrix[k * size + i]))
      }
      unchecked((matrix[j * size + i] = sum / matrix[i * size + i]))
    }
  }
}

export function lud(): f64 {
  const size: i32 = 512
  const matrix = new StaticArray<f64>(size * size)
  randomMatrix(matrix)

  const t1 = performance.now()
  performLud(matrix, size)
  const t2 = performance.now()
  return t2 - t1
}
