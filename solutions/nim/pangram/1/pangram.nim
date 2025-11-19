import std/strutils

proc isPangram*(s: string): bool =
  let normalized_s = toLowerAscii(s)
  var all_in = true
  for c in LowercaseLetters:
    all_in = all_in and normalized_s.contains(c)
  return all_in
