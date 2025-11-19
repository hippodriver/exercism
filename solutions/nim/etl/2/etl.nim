import std/tables
import std/strutils

proc transform*(t: Table[int, seq[char]]): Table[char, int] =
  var output: Table[char, int]
  for k, v in t:
    for l in v:
      output[toLowerAscii(l)] = k
  return output