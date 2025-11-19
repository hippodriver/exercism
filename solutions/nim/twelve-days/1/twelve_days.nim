proc recite*(start: int, stop = -1): string =
  let days = @["first", "second", "third", "fourth", "fifth",
    "sixth", "seventh", "eighth", "ninth", "tenth", "eleventh", "twelfth"]
  let gifts = @["a Partridge in a Pear Tree",
    "two Turtle Doves",
    "three French Hens",
    "four Calling Birds",
    "five Gold Rings",
    "six Geese-a-Laying",
    "seven Swans-a-Swimming",
    "eight Maids-a-Milking",
    "nine Ladies Dancing",
    "ten Lords-a-Leaping",
    "eleven Pipers Piping",
    "twelve Drummers Drumming"]

  result = "On the " & days[start-1] & " day of Christmas my true love gave to me: " & gifts[start-1] 
  for i in countdown(start-2, 0):
    result = result & ", "
    if i == 0:
      result = result & "and "
    result = result & gifts[i]
  result = result & "."

  for n in start+1..stop:
    result = result & "\n\nOn the " & days[n-1] & " day of Christmas my true love gave to me: " & gifts[n-1] 
    for i in countdown(n-2, 0):
      result = result & ", "
      if i == 0:
        result = result & "and "
      result = result & gifts[i]
    result = result & "."
