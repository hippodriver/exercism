let score (x: float) (y: float): int =
  let distance = sqrt (x *. x +. y *. y) in
  match distance with
  | _ when distance <= 1.0 -> 10
  | _ when distance <= 5.0 -> 5
  | _ when distance <= 10.0 -> 1
  |_ -> 0
