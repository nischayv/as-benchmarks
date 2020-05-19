export class FireEffect {
  constructor() {
    this.width = 100
    this.height = 80
    this.fire = new Uint8Array(this.width * this.height).fill(0)
  }

  updateScreen() {
    for (let i = 0; i < this.width; i++) {
      // randomize the 2nd row from the bottom
      this.fire[this.width + i] = Math.floor(Math.random() * 255)
    }

    for (let i = this.height; i > 1; i--) {
      for (let j = 0; j < this.width; j++) {
        const index = i * this.width + j // convert the j and i coordinates to the array index
        this.fire[index] = Math.floor(
          (this.fire[(i - 1) * this.width + ((j - 1 + this.width) % this.width)] +
            this.fire[(i - 1) * this.width + ((j + this.width) % this.width)] +
            this.fire[(i - 1) * this.width + ((j + 1 + this.width) % this.width)] +
            this.fire[(i - 2) * this.width + ((j + this.width) % this.width)]) /
            4.04
        )
      }
    }
  }

  getFire() {
    return this.fire
  }

  clear() {
    this.fire = new Uint8Array(this.width * this.height).fill(0)
  }
}
