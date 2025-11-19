import std/strutils
import std/sequtils

proc abbreviate*(s: string): string =
  let normalized_s: string = s.replace("-", " ")
  let words = normalized_s.split(" ")
  let stripped_words = words.map(proc (w: string): string = w.strip(chars = PunctuationChars))
  let sanitized_words = stripped_words.filter(proc (w: string): bool = (not w.isEmptyOrWhitespace))
  let aprevs = sanitized_words.map(proc (w: string): char = w[0])
  let tla = aprevs.mapIt($it).join
  return toUpperAscii(tla)
