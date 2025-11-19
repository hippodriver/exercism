proc basic(n: int64): string =
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
    return "forty"
  elif n < 50:
    return "forty-" & basic(n mod 10)
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

proc hundreds(n: int64): string =
    let a = n div 100
    let b = n mod 100
    if a > 0:
      if b > 0 : 
        result = basic(a) & " hundred " & basic(b)
      else:
        result = basic(a) & " hundred"
    else:
      result = basic(b)

proc thousands(n: int64): string =
    let a = n div 1000
    let b = n mod 1000
    if a > 0:
      if b > 0 : 
        result = hundreds(a) & " thousand " & hundreds(b)
      else:
        result = hundreds(a) & " thousand"
    else:
      result = hundreds(b)

proc millions(n: int64): string =
    let a = n div 1000_000
    let b = n mod 1000_000
    if a > 0:
      if b > 0 : 
        result = hundreds(a) & " million " & thousands(b)
      else:
        result = hundreds(a) & " million"
    else:
      result = thousands(b)

proc billions(n: int64): string =
    let a = n div 1000_000_000
    let b = n mod 1000_000_000
    if b > 0 : 
      result = hundreds(a) & " billion " & millions(b)
    else:
      result = hundreds(a) & " billion"


proc say*(n: int64): string =
  if n < 0 or n > 999_999_999_999:
    raise newException(ValueError, "out of range")
  if n < 100:
    result = basic(n)
  elif n < 1000:
    result = hundreds(n)
  elif n < 1_000_000:
    result = thousands(n)
  elif n < 1_000_000_000:
    result = millions(n)
  else:
    result = billions(n)