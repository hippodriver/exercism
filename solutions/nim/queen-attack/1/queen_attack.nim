type
  Queen* = object
    row*: int
    col*: int

proc initQueen*(row, col: int): Queen =
  if (row < 0) or (row > 7) or (col < 1) or (col > 7):
    raise newException(ValueError, "Invalid queen position")
  Queen(row: row, col: col)

proc canAttack*(white, black: Queen): bool =
  if white == black:
    raise newException(ValueError, "white and black queen on sme postition")
  (white.row == black.row) or (white.col == black.col) or (abs(white.row - black.row) == abs(white.col - black.col))


proc board*(white, black: Queen): string =
  if white == black:
    raise newException(ValueError, "white and black queen on sme postition")
  for i in 0 .. 7:
    for j in 0 .. 7:
      if (white.row == i) and (white.col == j):
        result &= "W"
      elif (black.row == i) and (black.col == j):
        result &= "B"
      else:
        result &= "_"
    result &= "\n"