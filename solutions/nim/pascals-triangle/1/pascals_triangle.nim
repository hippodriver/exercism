import std/sequtils

proc pascal*(n: int): seq[seq[int]] =
  case n:
    of 0:
      @[]
    of 1:
      @[@[1]]
    of 2:
      @[@[1], @[1,1]]
    else :
      let prev = pascal(n - 1)
      let fac1 = prev[^1] & 0
      let fac2 = 0 & prev[^1]
      let sums = zip(fac1, fac2).map(proc(t: tuple[a: int, b: int]): int = t.a + t.b)
      prev & sums
