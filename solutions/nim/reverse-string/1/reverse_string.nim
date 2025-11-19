proc reverse*(s: string): string =
  if s.len < 2:
    return s
  let c = s[s.len - 1]
  return c & reverse(s[0 .. s.len - 2])
