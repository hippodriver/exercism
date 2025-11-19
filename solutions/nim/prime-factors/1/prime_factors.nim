proc primeFactors*(n: int64): seq[int] =
  var rest = n
  var factors: seq[int]
  while rest > 1:
    for i in 2 .. rest:
      if rest mod i == 0:
        factors.add(i)
        rest = int(rest / i)
        break
    echo "factors= " & $factors
  return factors

