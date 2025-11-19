import std/sequtils

type
  Comparison* = enum
    Unequal, Sublist, Superlist, Equal

proc is_sub(a, b: openArray[int]): bool =
  if a.len > b.len:
    return false
  if a.len == 0:
    return true

  for i in 0..(b.len - a.len):
    var sub = true
    for j in 0..<a.len:
      if a[j] != b[i + j]:
        sub = false
        break
    if sub:
      return true
  return false


proc sublist*(a, b: openArray[int]): Comparison =
  let a_subof_b = is_sub(a, b)
  let b_subof_a = is_sub(b, a)
  if a_subof_b and b_subof_a:
    result = Equal
  elif a_subof_b:
    result = Sublist
  elif b_subof_a:
    result = Superlist
  else:
    result = Unequal
