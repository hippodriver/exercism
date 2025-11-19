proc primes*(limit: int): seq[int] =
  if limit < 2:
    return @[]
  var sieve = newSeq[bool](limit + 1)
  for i in 0..limit:
    sieve[i] = true

  for i in 2..limit:
    if (sieve[i]):
      var pos = 2 * i
      while pos <= limit:
        sieve[pos] = false
        pos += i

  # echo "sieve=" & $sieve

  result = @[2]
  for i in 3..limit:
    if sieve[i]:
      result.add(i)


