memory.grow(1)

class Star {
  constructor(
    public x: f64 = 0.0,
    public y: f64 = 0.0,
    public vx: f64 = -5 + NativeMath.random() * 10,
    public vy: f64 = -5 + NativeMath.random() * 10,
    public color: f64 = 0.0
  ) {}
}

let count: i32 = 0
let stars = new StaticArray<Star>(750)

export function addStar(): void {
  if (count < 750) {
    // create a new star in the middle with random velocity
    // add the star to the array
    unchecked((stars[count] = new Star()))
    count += 1
  }
}

export function updateStars(): void {
  for (let i = 0; i < count; i++) {
    const star = unchecked(stars[i])
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

export function setStar(i: i32): void {
  const star = unchecked(stars[i])
  store<f64>(0, star.x)
  store<f64>(8, star.y)
  store<f64>(16, star.color)
}

export function clear(): void {
  stars = new StaticArray<Star>(750)
  count = 0
}
