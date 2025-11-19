import std/strutils
import std/sequtils
import std/algorithm

proc isValid*(s: string): bool =
  let normalized_string = replace(s, " ")
  if normalized_string.len < 2:
    return false
  if normalized_string.anyIt(not isDigit(it)):
    return false
  let digits = toSeq(normalized_string.items).map(proc (c: char): int = parseInt($c))
  var rev_digits = digits.reversed
  echo "original rev_digits: " & $rev_digits
  for i in 0..<int(rev_digits.len / 2):
    let d = rev_digits[2*i + 1]
    let u = if (2 * d) < 10: 2 * d else: (2 * d) - 9 
    rev_digits[2*i + 1] = u
  echo "updated rev_digits: " & $rev_digits
  let sum = foldl(rev_digits, a + b, 0)
  result = sum mod 10 == 0

