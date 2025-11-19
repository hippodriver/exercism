import std/strutils

proc isIsogram*(s: string): bool =
  let s_nomalized = s.toLowerAscii
  var detected_chars: set[char]
  for c in s_nomalized:
    if c in Letters:
      if c in detected_chars:
        return false
      else:
        detected_chars.incl(c)
  return true
