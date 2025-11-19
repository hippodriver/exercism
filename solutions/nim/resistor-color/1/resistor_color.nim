type
  ResistorColor* = enum
    Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White

proc colorCode*(color: ResistorColor): int =
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


proc colors*: array[0..ResistorColor.high.ord, ResistorColor] =
  [Black, Brown, Red, Orange, Yellow, Green, Blue, Violet, Grey, White]
