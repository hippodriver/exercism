import std/sequtils
import std/strutils

type
  ResistorColor* = enum
    Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White

proc colorCode(color: ResistorColor): int =
  case color:
    of Black: 0
    of Brown: 1
    of Red: 2
    of Orange: 3
    of Yellow: 4
    of Green: 5
    of Blue: 6
    of Violet: 7
    of Grey: 8
    of White: 9


proc value*(colors: openArray[ResistorColor]): int =
  let numbers = colors.mapIt(it.colorCode)
  let s = numbers.foldl(a & $b, "")
  let st = 
    if s.len > 2:
      s[0..1]
    else:
      s
  parseInt(st)

