import std/sequtils

type
  Classification* = enum
    Perfect, Deficient, Abundant


proc factors(n: int): seq[int] =
  result = @[0]
  for i in 1..n-1:
    if n mod i == 0:
      result.add(i)


proc aliquodSum(n: int): int =
  let fac = factors(n)
  echo "fac=" & $fac
  fac.foldl(a + b, 0)


proc classify*(n: int): Classification =
  if n < 1:
    raise newException(ValueError, "number too small")
  let ali = aliquodSum(n)
  echo "ali=" & $ali
  if n == ali:
    result = Perfect
  elif n < ali:
    result = Abundant
  else:
    result = Deficient