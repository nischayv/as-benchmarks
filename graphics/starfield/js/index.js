export class Starfield {
  constructor() {
    this.stars = []
  }

  addStar() {
    if (this.stars.length < 750) {
      // create a new star in the middle with random velocity
      const star = {
        x: 0,
        y: 0,
        vx: -5 + Math.random() * 10,
        vy: -5 + Math.random() * 10
      }
      this.stars.push(star) // add the star to the array
    }
  }

  updateStars() {
    const length = this.stars.length
    for (let i = 0; i < length; i++) {
      const star = this.stars[i]
      star.x = star.x + star.vx // add the velocity to the current position
      star.y = star.y + star.vy // in both axles
      if (star.x > 400 || star.x < -400) {
        // if the star is out of bounds put it back in the center
        star.x = 0
        star.y = 0
      }

      // set color
      star.color = Math.floor((Math.abs(star.x) + Math.abs(star.y)) / 5)
    }
  }

  getStar(i) {
    const { x, y, color } = this.stars[i]
    return [x, y, color]
  }

  clear() {
    this.stars = []
  }
}
