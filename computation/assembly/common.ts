export declare function consoleLog(msg: string): void
export declare function performanceNow(): f64

export namespace console {
  export function log(msg: string): void {
    consoleLog(msg)
  }
}
export namespace performance {
  export function now(): f64 {
    return performanceNow()
  }
}

// Need to declare this here because assemblyscript doesn't support closures yet
let seed = 49734321

export function commonRandom(): i32 {
  // Robert Jenkins' 32 bit integer hash function.
  seed = (seed + 0x7ed55d16 + (seed << 12)) & 0xffffffff
  seed = (seed ^ 0xc761c23c ^ (seed >>> 19)) & 0xffffffff
  seed = (seed + 0x165667b1 + (seed << 5)) & 0xffffffff
  seed = ((seed + 0xd3a2646c) ^ (seed << 9)) & 0xffffffff
  seed = (seed + 0xfd7046c5 + (seed << 3)) & 0xffffffff
  seed = (seed ^ 0xb55a4f09 ^ (seed >>> 16)) & 0xffffffff
  return seed
}

export function commonRandomJS(): f64 {
  const commonRand = commonRandom()
  return Math.abs(commonRand)
}
