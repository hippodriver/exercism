import std/sequtils

proc smallestInColumn(matrix: seq[seq[int]], col: int, value: int): bool =
  echo "smallestInColumn col=" & $col & " value=" & $value
  var smallest = true
  for row in matrix:
    if row[col] < value:
      smallest = false
  result = smallest

proc largest(row: seq[int]): int =
  let pos = maxIndex(row)
  result = row[pos]


proc saddlePoints*(matrix: seq[seq[int]]): seq[tuple[r, c: int]] =
  for y, row in matrix:
    let max = largest(row)
    echo "max in row " & $y & "=" & $max
    for x, value in row:
      if value >= max:
        if smallestInColumn(matrix, x, value):
          echo "Sadle point=" & $(y + 1, x + 1)
          result.add((y + 1, x + 1))
