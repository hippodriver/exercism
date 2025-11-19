import std/sequtils

proc onSquare*(n: int): uint64 =
  if n < 1 or n > 64:
    raise newException(ValueError, "invalid field number")
  var product: uint64 = 1
  for i in 0 .. n-2:
    product = product * 2.uint64
  return product

proc total*: uint64 =
  return (1..64).toSeq().mapIt(onSquare(it)).foldl( a + b, 0.uint64)
