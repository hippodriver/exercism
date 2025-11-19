proc binarySearch*(a: openArray[int], val: int): int =
  if a.len == 0:
    return -1
  var left = 0
  var right = a.len - 1
  while right - left > 1:
    let middle = left + ((right - left) div 2)
    echo $left & " " & $middle & " " & $right
    if a[middle] == val:
      return middle
    elif val < a[middle]:
      right = middle
    else:
      left = middle
  result = 
    if a[right] == val:
      right
    elif a[left] == val:
      left
    else:
      -1
