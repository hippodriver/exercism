import std/strutils
import std/sequtils

proc clean*(s: string): string =
  var n = newSeq[char]()
  for c in s:
    if c in Digits:
      n.add(c)
  var numbers = n.mapIt($it).join
  numbers.removePrefix('1')

  echo "numbers=" & numbers
  echo "length=" & $numbers.len

  if numbers.len != 10:
    raise newException(ValueError, "Wrong length of numbers")
  if not (numbers[0] in {'2'..'9'}):
    raise newException(ValueError, "wrong erea code number")
  if not (numbers[3] in {'2'..'9'}):
    raise newException(ValueError, "wrong erea code number")
  result = numbers

