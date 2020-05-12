export class Starfield {
  constructor() {
    this.stars = []
  }

  addStar() {
    if (this.stars.length < 1000) {
      // if fewer than 300 stars, a 50% chance of creating a new one
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

  getStarsLength() {
    return this.stars.length
  }

  getStarInfo(i) {
    const star = this.stars[i]
    return [star.x, star.y, star.color]
  }

  clear() {
    this.stars = []
  }
}
