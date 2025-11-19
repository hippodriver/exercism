import std/tables

proc transform*(t: Table[int, seq[char]]): Table[char, int] =
  var output: Table[char, int]
  for k, v in tables.mpairs(t):
    discard
  return output