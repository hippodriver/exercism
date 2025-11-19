import std/strutils
import std/sequtils
import std/math

proc encrypt*(s: string): string =
  let only_letter_chars = filterIt(normalize(s), isAlphaNumeric(it))
  echo "only_letters: " & $ only_letter_chars
  let cols = int(ceil(sqrt(float(only_letter_chars.len))))
  echo "only_letter_chars.len: " & $only_letter_chars.len
  echo "cols: " & $cols
  let rows = int(ceil(only_letter_chars.len / cols))
  echo "rows: " & $rows
  if cols == 0:
    return ""
  for i in 0..cols-1:
    echo "Adding pre-space"
    result.add(' ')
    for j in 0..rows-1:
      if i + cols * j > only_letter_chars.len - 1:
        echo "Adding replacement-space"
        result.add(' ')
      else:
        let c = only_letter_chars[i + cols * j]
        echo "char: " & $c
        result.add(c)
  result.strip(leading = true, trailing = false)