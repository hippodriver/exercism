import std/algorithm
import std/strutils

proc detectAnagrams*(word: string, candidates: openArray[string]): seq[string] =
  let target_chars = cast[seq[char]](word.toLower).sorted
  var anagrams: seq[string]

  for candidate in candidates:
    let candidate_chars = cast[seq[char]](candidate.toLower).sorted
    if (candidate_chars == target_chars) and (word.toLower != candidate.toLower):
      anagrams.add(candidate)
  return anagrams
