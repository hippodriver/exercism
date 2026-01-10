type planet = Mercury | Venus | Earth | Mars
            | Jupiter | Saturn | Neptune | Uranus

let age_on p s =
  let y = (float_of_int s) /. 31557600.0 in
  match p with
  | Mercury -> y /. 0.2408467
  | Venus -> y /. 0.61519726
  | Earth -> y
  | Mars -> y /. 1.8808158
  | Jupiter -> y /. 11.862615
  | Saturn -> y /. 29.447498
  | Uranus -> y /. 84.016846
  | Neptune -> y /. 164.79132
