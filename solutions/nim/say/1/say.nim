proc basic(n: int64): string =
  if n < 0 or n > 99:
    raise newException(ValueError, "out of range")
  case n:
    of 0: return "zero"
    of 1: return "one"
    of 2: return "two"
    of 3: return "three"
    of 4: return "four"
    of 5: return "five"
    of 6: return "six"
    of 7: return "seven"
    of 8: return "eight"
    of 9: return "nine"
    of 10: return "ten"
    of 11: return "eleven"
    of 12: return "twelf"
    of 13: return "thirteen"
    of 14: return "fourteen"
    of 15: return "fifteen"
    of 16: return "sixteen"
    of 17: return "seventeen"
    of 18: return "eighteen"
    of 19: return "nineteen"
    of 20: return "twenty"
    else: discard
  if n < 30:
    return "twenty-" & basic(n mod 10)
  elif n == 30:
    return "thirty"
  elif n < 40:
    return "thirty-" & basic(n mod 10)
  elif n == 40:
    return "fourty"
  elif n < 50:
    return "fourty-" & basic(n mod 10)
  elif n == 50:
    return "fifty"
  elif n < 60:
    return "fifty-" & basic(n mod 10)
  elif n == 60:
    return "sixty"
  elif n < 70:
    return "sixty-" & basic(n mod 0)
  elif n == 70:
    return "seventy"
  elif n < 80:
    return "seventy-" & basic(n mod 10)
  elif n == 80:
    return "eighty"
  elif n < 90:
    return "eighty-" & basic(n mod 10)
  elif n == 90:
    return "ninety"
  else:
    return "ninety-" & basic(n mod 10)


proc say*(n: int64): string =
  basic(n)
