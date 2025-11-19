import std/tables
import std/strutils
import std/sequtils

proc countWords*(s: string): Table[string, int] =
  let words = s.split((PunctuationChars + Whitespace) - {'\''})
  let normalized_s = words.map(proc (s: string): string = s.normalize.strip(true, true, {'\''}))
  echo normalized_s
  var t = initTable[string, int]()
  for word in normalized_s:
    if t.contains(word):
      t[word] = t[word] + 1
    elif not word.isEmptyOrWhitespace:
      t[word] =1
  return t



