export class FireEffect {
  constructor() {
    this.width = 1500
    this.height = 400
    this.fire = new Uint8Array(this.width * this.height * 4).fill(0)
  }

  updateScreen() {
    for (let i = 0; i < this.width; i++) {
      // randomize the 2nd row from the bottom
      const index = (this.width * (this.height - 2) + i) << 2
      // console.log(index)
      this.fire[index] = Math.floor(Math.random() * 255)
      this.fire[index + 1] = 0
      this.fire[index + 2] = 0
      this.fire[index + 3] = 255
    }

    for (let i = 0; i < this.height - 1; i++) {
      for (let j = 0; j < this.width; j++) {
        const index = (i * this.width + j) << 2 // convert the j and i coordinates to the array index
        const bottomLeft = ((i + 1) * this.width + ((j - 1 + this.width) % this.width)) << 2
        const bottom = ((i + 1) * this.width + ((j + this.width) % this.width)) << 2
        const bottomRight = ((i + 1) * this.width + ((j + 1 + this.width) % this.width)) << 2
        const bottomDown = ((i + 2) * this.width + ((j + this.width) % this.width)) << 2

        this.fire[index] = Math.floor(
          (this.fire[bottomLeft] +
            this.fire[bottom] +
            this.fire[bottomRight] +
            this.fire[bottomDown]) /
            4.01
        )
        this.fire[index + 1] = 0
        this.fire[index + 2] = 0
        this.fire[index + 3] = 255
      }
    }
  }

  getFire() {
    return this.fire
  }

  clear() {
    this.fire = new Uint8Array(this.width * this.height * 4).fill(0)
  }
}
