import std/algorithm
import std/sequtils

type
  Category* = enum
    Ones, Twos, Threes, Fours, Fives, Sixes,
    FullHouse, FourOfAKind, LittleStraight, BigStraight, Choice, Yacht

proc score*(dice: array[5, int], category: Category): int =
  let s = dice.sorted
  case category:
    of Yacht:
      if s[0] == s[1] and s[0] == s[2] and s[0] == s[3] and s[0] == s[4]:
        result = 50
      else:
        result = 0
    of Choice:
      result = s.foldl(a + b, 0)
    of LittleStraight:
      if s[0] == 1 and s[1] == 2 and s[2] == 3 and s[3] == 4 and s[4] == 5:
        result = 30
      else:
        result = 0
    of BigStraight:
      if s[0] == 2 and s[1] == 3 and s[2] == 4 and s[3] == 5 and s[4] == 6:
        result = 30
      else:
        result = 0
    of FourOfAKind:
      if s[0] == s[1]:
        if s[0] == s[1] and s[0] == s[2] and s[0] == s[3]:
          result = 4 * s[2]
        else:
          result = 0
      else:
        if s[1] == s[2] and s[1] == s[3] and s[1] == s[4]:
          result = 4 * s[2]
        else:
          result = 0
    of FullHouse:
      if s[0] == s[2]:
        if s[0] == s[1] and s[3] == s[4] and s[0] != s[4]:
          result = s.foldl(a + b, 0)
        else:
          result = 0
      else:
        if s[0] == s[1] and s[2] == s[3] and s[2] == s[4] and s[0] != s[4]:
          result = s.foldl(a + b, 0)
        else:
          result = 0
    of Sixes:
      result = 6 * s.countIt(it == 6)
    of Fives:
      result = 5 * s.countIt(it == 5)
    of Fours:
      result = 4 * s.countIt(it == 4)
    of Threes:
      result = 3 * s.countIt(it == 3)
    of Twos:
      result = 2 * s.countIt(it == 2)
    of Ones:
      result = 1 * s.countIt(it == 1)
