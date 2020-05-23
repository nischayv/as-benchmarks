memory.grow(1)

const width: i32 = 1500
const height: i32 = 400
const fire = new Uint8Array(width * height * 4)

// @ts-ignore: decorator
@inline
export function clear(): void {
  for (let i = 0; i < width * height * 4; i++) {
    unchecked((fire[i] = 0))
  }
}

clear()

export function updateScreen(): void {
  for (let i = 0; i < width; i++) {
    // randomize the 2nd row from the bottom
    const index = (width * (height - 2) + i) << 2
    const value = Math.floor(Math.random() * 255) as u8
    unchecked((fire[index] = value))
    unchecked((fire[index + 1] = 0))
    unchecked((fire[index + 2] = 0))
    unchecked((fire[index + 3] = 255))
  }

  for (let i = 0; i < height - 1; i++) {
    for (let j = 0; j < width; j++) {
      const index = (i * width + j) << 2 // convert the j and i coordinates to the array index
      const bottomLeft = ((i + 1) * width + ((j - 1 + width) % width)) << 2
      const bottom = ((i + 1) * width + ((j + width) % width)) << 2
      const bottomRight = ((i + 1) * width + ((j + 1 + width) % width)) << 2
      const bottomDown = ((i + 2) * width + ((j + width) % width)) << 2
      const value = unchecked(
        ((fire[bottomLeft] + fire[bottom] + fire[bottomRight] + fire[bottomDown]) / 4.01) as u8
      )
      unchecked((fire[index] = value))
      unchecked((fire[index + 1] = 0))
      unchecked((fire[index + 2] = 0))
      unchecked((fire[index + 3] = 255))
    }
  }
}

export function getDataBuffer(): ArrayBuffer {
  return fire.buffer as ArrayBuffer
}
