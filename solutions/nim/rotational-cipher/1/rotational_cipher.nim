import std/strutils

proc rotChar(c: char, n: int): char =
  let orig = ord(c)
  let moved = (orig + n)
  let norm = 
    if c in LowercaseLetters:
      ((moved - 97) mod 26) + 97
    elif c in UppercaseLetters:
      ((moved - 65) mod 26) + 65
    else:
      orig
  result = chr(norm)

proc rotate*(s: string, n: int): string =
  for c in s:
    result = result & $rotChar(c, n)
