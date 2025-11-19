proc prime*(n: int): int =
  if n < 1:
    raise newException(ValueError, "n is too small")
  var primes = @[2]
  var k = 2
  while primes.len < n:
    block inner:
      for i in 0..primes.len - 1:
        if k mod primes[i] == 0:
          k = k + 1
          break inner
      primes.add(k)    
  return primes[n - 1]
