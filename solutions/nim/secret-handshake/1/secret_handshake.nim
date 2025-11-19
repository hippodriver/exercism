import std/algorithm

type
  Action* = enum
    Wink, DoubleBlink, CloseEyes, Jump

proc commands*(n: int): seq[Action] =
  if (n and 0b00001) > 0:
    result.add(Wink)
  if (n and 0b00010) > 0:
    result.add(DoubleBlink)
  if (n and 0b00100) > 0:
    result.add(CloseEyes)
  if (n and 0b01000) > 0:
    result.add(Jump)
  if (n and 0b10000) > 0:
    result.reverse
