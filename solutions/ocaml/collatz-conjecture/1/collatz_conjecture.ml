let rec iter x n =
  if x == 1 then n else begin
    if x mod 2 == 0 then iter (x / 2) (n + 1) else iter (3 * x + 1) (n + 1)
  end

let collatz_conjecture number = 
  if number <= 0 then Error "Only positive integers are allowed" else Ok (iter number 0)