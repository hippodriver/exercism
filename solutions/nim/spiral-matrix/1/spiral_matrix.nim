import std/math

type
  Direction = enum
    Left, Right, Up, Down

proc nextDirection(d: Direction): Direction =
  case d:
    of Right:
      return Down
    of Down:
      return Left
    of Left:
      return Up
    of Up:
      return Right

proc spiral*(n: static int): array[n, array[n, int]] =
  let max = n
  var x_min = 0
  var x_max = max - 1
  var y_min = 0
  var y_max = max - 1
  var x = 0
  var y = 0
  var d = Right
  for counter in 1..n*n:
    result[y][x] = counter
    case d:
      of Right:
        if x < x_max:
          x = x + 1
        else:
          y = y + 1
          y_min = y_min + 1
          d = nextDirection(d)
      of Down:
        if y < y_max:
          y = y + 1
        else:
          x = x - 1
          x_max = x_max - 1
          d = nextDirection(d)
      of Left:
        if x > x_min:
          x = x - 1
        else:
          y = y - 1
          y_max = y_max - 1
          d = nextDirection(d)
      of Up:
        if y > y_min:
          y = y - 1
        else:
          x = x + 1
          x_min = x_min + 1
          d = nextDirection(d)
