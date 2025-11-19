proc isTriangle(sides: array[3 ,int]): bool =
  var ok = (sides[0] * sides[1] * sides[2]) > 0
  ok = ok and (sides[0] + sides[1] >= sides[2])
  ok = ok and (sides[1] + sides[2] >= sides[0])
  ok = ok and (sides[0] + sides[2] >= sides[1])
  return ok

proc isEquilateral*(sides: array[3, int]): bool =
  return isTriangle(sides) and (sides[0] == sides[1]) and (sides[0] == sides[2])

proc isIsosceles*(sides: array[3, int]): bool =
  return isTriangle(sides) and ((sides[0] == sides[1]) or (sides[1] == sides[2]) or (sides[0] == sides[2]))

proc isScalene*(sides: array[3, int]): bool =
  return isTriangle(sides) and (sides[0] != sides[1]) and (sides[1] != sides[2]) and (sides[0] != sides[2])