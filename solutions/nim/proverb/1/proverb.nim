import std/strformat

proc build(words: openArray[string], first: string): string =
  case words.len:
    of 0:
      ""
    of 1:
      fmt"And all for the want of a {first}."
    else:
      fmt"For want of a {words[0]} the {words[1]} was lost." & "\n" & build(words[1..<words.len], first)


proc recite*(words: openArray[string]): string =
  if words.len == 0:
    ""
  else:
    build(words, words[0])  

