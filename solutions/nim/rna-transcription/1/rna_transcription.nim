proc toRna*(s: string): string =
  if s.len == 0:
    result = ""
  else:
    result = ""
    for c in s:
      case c:
        of 'G':
          result.add('C')
        of 'C':
          result.add('G')
        of 'T':
          result.add('A')
        of 'A':
          result.add('U')
        else:
          raise newException(ValueError, "Wrong char")
