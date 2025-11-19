import std/random
import std/math

proc privateKey*(p: int): int =
  max(2, rand(p - 1))

proc publicKey*(p, g, a: int): int =
  (g ^ a) mod p

proc secret*(p, bPub, a: int): int =
  (bPub ^ a) mod p
