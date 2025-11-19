import std/sequtils
import std/math

proc isArmstrongNumber*(n: int): bool =
  var rest = n
  var numbers: seq[int]
  while rest > 0:
    numbers.add(rest mod 10)
    rest = rest div 10
  echo numbers
  let length = len(numbers)
  echo length
  var sum = 0
  for number in numbers:
    sum = sum + (number ^ length)
  echo sum
  return n == sum
  