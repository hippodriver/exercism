import std/algorithm

proc convert*(digits: openArray[int], fromBase: int, toBase: int): seq[int] =
  if fromBase < 2:
    raise newException(ValueError, "fromBase too low")
  if toBase < 2:
    raise newException(ValueError, "toBase too low")
  if digits.len == 0:
    return @[0]
  var posBase: int = 1
  var base10 = 0
  for d in digits.reversed:
    if (d >= fromBase) or (d < 0):
      raise newException(ValueError, "digit malformed")
    base10 = base10 + (d * posBase)
    posBase = posBase * fromBase
  echo base10
  if base10 == 0: return @[0]
  var baseTarget: seq[int]
  while base10 > 0:
    var digit = base10 mod toBase
    baseTarget.add(digit)
    base10 = base10 div toBase
  return baseTarget.reversed
