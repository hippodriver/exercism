import std/strutils
import std/sequtils

proc normalize(s: string): seq[char] =
  let lowercase = s.toLowerAscii
  let chars_only = lowercase.toSeq.filter(proc (c: char): bool = not ((c in Whitespace) or (c in PunctuationChars)))
  return chars_only

proc encode*(s: string): string =
  var target = ""
  var counter = 0
  let aOrd = int('a')
  let zOrd = int('z')
  echo normalize(s)
  for c in normalize(s):
    let cOrd = int(c)
    let tOrd = 
      if (aOrd <= cOrd) and (cOrd <= zOrd):
       zOrd - (cOrd - aOrd)
      else:
       cOrd
    target.add(char(tOrd))
    if (counter == 4):
      target.add(' ')
      counter = 0
    else:
      counter = counter + 1
  target  = target.strip
  echo "<" & target & ">"
  return target

proc decode*(s: string): string =
  var target = ""
  let aOrd = int('a')
  let zOrd = int('z')
  let chars_only = s.toSeq.filter(proc (c: char): bool = not (c in Whitespace))
  for c in chars_only:
    let cOrd = int(c)
    let tOrd = 
      if (aOrd <= cOrd) and (cOrd <= zOrd):
       zOrd - (cOrd - aOrd)
      else:
       cOrd
    target.add(char(tOrd))
  echo "<" & target & ">"
  return target
  
