import std/strutils
import std/sequtils

proc row*(s: string, n: int): seq[int] =
  let rows = s.splitLines
  echo "rows: " & $rows
  let row = rows[n - 1]
  echo "row: " & $row
  return row.split(" ").mapIt(parseInt(it))

proc column*(s: string, n: int): seq[int] =
  let rows = s.splitLines
  for row in rows:
    let elms = row.split(" ")
    result.add(parseInt(elms[n - 1]))

