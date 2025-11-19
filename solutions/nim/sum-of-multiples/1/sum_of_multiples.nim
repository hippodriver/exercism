import sequtils
import std/sets

proc facs(limit: int, number: int): HashSet[int] =
  var factors: HashSet[int]
  var mul = 1
  while (mul * number < limit) and (number > 0):
    factors.incl(mul * number)
    mul = mul + 1
  return factors

proc sum*(limit: int, factors: openArray[int]): int =
  var numbers: HashSet[int]
  for fac in factors:
    let new_multis = facs(limit, fac)
    numbers = numbers + new_multis
  return foldl(numbers, a + b, 0)
