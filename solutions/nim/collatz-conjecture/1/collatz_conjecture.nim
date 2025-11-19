proc steps*(n: int): int =
  if n < 1:
    raise newException(ValueError, "number too small")
  var turns = 0
  var number = n
  while number > 1:
    echo number
    if number mod 2 == 0:
      number = number div 2
      turns += 1
    else:
      number = 3 * number + 1
      turns += 1
  return turns