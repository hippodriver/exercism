import std/math

proc score*(x, y: float): int =
  let distance = sqrt(x*x + y*y)
  case distance:
    of 0.0 .. 1.0:
      10
    of 1.001 .. 5.0:
      5
    of 5.001 .. 10.0:
      1
    else:
      0