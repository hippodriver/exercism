let rec count_bits number count =
  if number = 0 then count else count_bits (Int.shift_right number 1) (count + (number mod 2))

let egg_count number = count_bits number 0
