memory.grow(1)

const width: i32 = 100
const height: i32 = 80
const fire = new Uint8Array(width * height)

// @ts-ignore: decorator
@inline
export function clear(): void {
  for (let i = 0; i < width * height; i++) {
    unchecked((fire[i] = 0))
  }
}

clear()

export function updateScreen(): void {
  for (let i = 0; i < width; i++) {
    // randomize the 2nd row from the bottom
    const value = Math.floor(Math.random() * 255) as u8
    unchecked((fire[width + i] = value))
  }

  for (let i = height; i > 1; i--) {
    for (let j = 0; j < width; j++) {
      const index = i * width + j // convert the j and i coordinates to the array index
      const value = unchecked(
        Math.floor(
          (fire[(i - 1) * width + ((j - 1 + width) % width)] +
            fire[(i - 1) * width + ((j + width) % width)] +
            fire[(i - 1) * width + ((j + 1 + width) % width)] +
            fire[(i - 2) * width + ((j + width) % width)]) /
            4.04
        ) as u8
      )
      unchecked((fire[index] = value))
    }
  }
}

export function getDataBuffer(): ArrayBuffer {
  return fire.buffer as ArrayBuffer
}
