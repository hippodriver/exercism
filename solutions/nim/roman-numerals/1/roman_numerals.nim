proc roman*(n: int): string =
  if n < 1 or n >= 4000:
    raise newException(ValueError, "number out of range") 

  var left = n
  var roman = ""
  while left > 0:
    if left >= 1000:
      roman = roman & "M"
      left = left - 1000
    elif left >= 900:
      roman = roman & "CM"
      left = left - 900
    elif left >= 500:
      roman = roman & "D"
      left = left - 500
    elif left >= 400:
      roman = roman & "CD"
      left = left - 400
    elif left >= 100:
      roman = roman & "C"
      left = left - 100
    elif left >= 90:
      roman = roman & "XC"
      left = left - 90
    elif left >= 50:
      roman = roman & "L"
      left = left - 50
    elif left >= 40:
      roman = roman & "XL"
      left = left - 40
    elif left >= 10:
      roman = roman & "X"
      left = left - 10
    elif left >= 9:
      roman = roman & "IX"
      left = left - 9
    elif left >= 5:
      roman = roman & "V"
      left = left - 5
    elif left >= 4:
      roman = roman & "IV"
      left = left - 4
    else:
      roman = roman & "I"
      left = left - 1
  result = roman
