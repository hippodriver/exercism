import std/sequtils
import std/algorithm

proc latest*(scores: openArray[int]): int =
  scores[^1]

proc personalBest*(scores: openArray[int]): int =
  foldl(scores, if a > b: a else: b, 0)

proc personalTopThree*(scores: openArray[int]): seq[int] =
  let s = sorted(scores, SortOrder.Descending)
  case s.len:
    of 0:
      @[]
    of 1:
      s[0..0]
    of 2:
      s[0..1]
    else:
      s[0..2]
