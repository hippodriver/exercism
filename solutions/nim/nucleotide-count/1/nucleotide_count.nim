import std/tables

proc countDna*(s: string): CountTable[char] =
  var table = initCountTable[char](4)
  for c in s:
    if c in {'A', 'C', 'G', 'T'}:
      table.inc(c)
    else:
      raise newException(ValueError, "Wrong char")
  return table
