import std/sequtils
import std/strutils


proc transform (c: char): int =
  case c:
    of '0', '1', '2', '3', '4', '5', '6', '7', '8', '9':
      parseInt($c)
    of 'x', 'X':
      10
    else:
      raise newException(ValueError, "not a valid digit: " & c)


proc isValid*(s: string): bool =
  # normalize string
  let without_dashes: string = replace(s, "-")
  echo "without dashes: " & without_dashes

  # Some checks
  if without_dashes.len != 10:
    return false
  if without_dashes[0..^2].contains({'x', 'X'}):
    return false

  # Transform to list
  let digits = 
    try:
      without_dashes.mapIt(transform(it))
    except:
      return false

  echo "digits: " & $digits

  # do calculation
  let coeff = @[10, 9,8,7,6,5,4,3,2,1,0]
  echo "coeff: " & $coeff
  let combi = zip(coeff, digits)
  echo "combi: " & $combi
  let sum = foldl(combi, a + b[0] * b[1], 0)
  echo "sum: " & $sum

  # emit result
  sum mod 11 == 0
