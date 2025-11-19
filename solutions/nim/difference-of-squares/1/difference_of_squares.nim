import std/math
import std/sequtils

proc squareOfSum*(n: int): int =
   let sum: int = n * (n + 1) div 2
   return sum * sum


proc sumOfSquares*(n: int): int =
  let squares = (1..n).mapIt(it * it)
  return squares.foldl((a + b), 0)

proc difference*(n: int): int =
  return squareOfSum(n) - sumOfSquares(n)
