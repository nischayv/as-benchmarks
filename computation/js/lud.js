import { commonRandomJS } from './common'

function randomMatrix(matrix) {
  const size = Math.sqrt(matrix.length)
  const l = new Float64Array(matrix.length)
  const u = new Float64Array(matrix.length)

  for (let i = 0; i < size; ++i) {
    for (let j = 0; j < size; ++j) {
      if (i > j) {
        l[i * size + j] = commonRandomJS()
      } else if (i === j) {
        l[i * size + j] = 1
      } else {
        l[i * size + j] = 0
      }
    }
  }
  for (let j = 0; j < size; ++j) {
    for (let i = 0; i < size; ++i) {
      if (i > j) {
        u[j * size + i] = 0
      } else {
        u[j * size + i] = commonRandomJS()
      }
    }
  }

  for (let i = 0; i < size; ++i) {
    for (let j = 0; j < size; ++j) {
      let sum = 0
      for (let k = 0; k < size; k++) {
        sum += l[i * size + k] * u[j * size + k]
      }
      matrix[i * size + j] = sum
    }
  }
}

function performLud(matrix, size) {
  let sum

  for (let i = 0; i < size; ++i) {
    for (let j = i; j < size; ++j) {
      sum = matrix[i * size + j]
      for (let k = 0; k < i; ++k) sum -= matrix[i * size + k] * matrix[k * size + j]

      matrix[i * size + j] = sum
    }

    for (let j = i + 1; j < size; j++) {
      sum = matrix[j * size + i]
      for (let k = 0; k < i; ++k) sum -= matrix[j * size + k] * matrix[k * size + i]
      matrix[j * size + i] = sum / matrix[i * size + i]
    }
  }
}

export function lud(size = 512) {
  const matrix = new Float64Array(size * size)
  randomMatrix(matrix)

  const t1 = performance.now()
  performLud(matrix, size)
  const t2 = performance.now()

  return t2 - t1
}
