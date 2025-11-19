import std/strutils

proc diamond*(c: char): string =
  var num = ord(c) - ord('A')
  var space : Natural = num
  result = strutils.repeat(' ', space) & "A" & strutils.repeat(' ', space) & "\n"
  for x in 'B'..c:
    space = space - 1
    result.add(strutils.repeat(' ', space) & $x & strutils.repeat(' ', 2 * (num - space) - 1) & $x & strutils.repeat(' ', space) & "\n")
  if c != 'A':
    for x in countdown(chr(ord(c)-1), 'B'):
      space = space + 1
      result.add(strutils.repeat(' ', space) & $x & strutils.repeat(' ', 2 * (num - space) - 1) & $x & strutils.repeat(' ', space) & "\n")
    result.add(strutils.repeat(' ', space + 1) & "A" & strutils.repeat(' ', space + 1) & "\n")
