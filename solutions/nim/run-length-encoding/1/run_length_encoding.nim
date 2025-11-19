import std/strutils

proc encode*(s: string): string =
  if s.len == 0:
    return ""

  var cur = s[0]
  var count = 1
  for c in s[1 .. ^1]:
    if c == cur:
      count = count + 1
    elif count == 1:
      result = result & $cur
      cur = c
    else:
      result = result & $count & $cur
      cur = c
      count = 1
  if count == 1:
    result = result & $cur
  else:
    result = result & $count & $cur


proc decode*(s: string): string =
  var buf = ""
  for c in s:
    if (c in Letters) or (c == ' '):
      let mul =
        if buf.len == 0:
          1
        else :
          parseInt(buf)
      buf = ""
      result = result & c.repeat(mul)
    elif c in Digits:
      buf = buf & $c
    else:
      result = result & $c

