import std/sequtils

proc distance*(a, b: string): int =
  if a.len != b.len:
    raise newException(ValueError, "strings have different legnth")
  var distance = 0
  for (x, y) in zip(a,b):
    if x != y: distance = distance + 1
  return distance
