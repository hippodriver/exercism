import std/sequtils
import std/strutils


proc product(s: string): int =
  let digits = toSeq(s.items).map(proc (c: char): int = parseInt($c))
  let prod = digits.foldl(a * b, 1)
  return prod


proc getSeries(s: string, span: int): seq[string] =
  for i in 0..(s.len - span):
    let substring = s[i..<i+span]
    echo "substring: " & substring
    result.add(substring)


proc largestProduct*(s: string, span: int): int =
  if (span > s.len):
    raise newException(ValueError, "string too short")
  if span < 1:
    raise newException(ValueError, "span too short")
  let series = getSeries(s, span)
  let products = mapIt(series, product(it))
  let largestProduct = products.max
  return largestProduct

