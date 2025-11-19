import std/math

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


proc label*(r: array[3, ResistorColor]): tuple[value: int, unit: string] =
  let first = colorCode(r[0])
  let second = colorCode(r[1])
  let third = colorCode(r[2])
  var number = (10 * first + second) * pow(10, third.toFloat).toInt

  var s = "ohms"
  if number == 0:
    s = "ohms"
  elif number mod 1_000_000_000 == 0:
    s = "gigaohms"
    number = number div 1_000_000_000
  elif number mod 1_000_000 == 0:
    s = "megaohms"
    number = number div 1_000_000
  elif number mod 1_000 == 0:
    s = "kiloohms"
    number = number div 1_000

  (number, s)
