import std/strutils

proc slices*(s: string, n: int): seq[string] =
  if (n < 1) or (s.len < n):
    raise newException(ValueError, "String too short")
  result = @[]
  var start = 0
  for i in 0..s.len - n:
    echo "loop: " & $i
    echo "result: " & $result
    result.add(s[start..start + n - 1])
    start = start + 1
