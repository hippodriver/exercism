import std/strutils

proc ends_with_questionmark(s: string): bool =
  let stripped = strip(s)
  return (stripped.len > 0) and (stripped[^1] == '?')

proc is_yelled(s: string): bool =
  return s.contains(UppercaseLetters) and (s.toUpperAscii == s)

proc hey*(s: string): string =
  if not is_yelled(s) and ends_with_questionmark(s):
    return "Sure."
  if is_yelled(s) and  not ends_with_questionmark(s):
    return "Whoa, chill out!"
  if is_yelled(s) and ends_with_questionmark(s):
    return "Calm down, I know what I'm doing!"
  if isEmptyOrWhitespace(s):
    return "Fine. Be that way!"
  else:
    return "Whatever."
