type allergen = Eggs
              | Peanuts
              | Shellfish
              | Strawberries
              | Tomatoes
              | Chocolate
              | Pollen
              | Cats

let allergic_to number allergy =
  let pos = match allergy with
    | Eggs -> 1
    | Peanuts -> 2
    | Shellfish -> 4
    | Strawberries -> 8
    | Tomatoes -> 16
    | Chocolate -> 32
    | Pollen -> 64
    | Cats -> 128
  in
  number land pos > 0

let allergies number =
  let all_allergens = [
    Eggs; Peanuts; Shellfish; Strawberries; Tomatoes; Chocolate; Pollen; Cats
  ] in
  List.filter (fun allergy -> allergic_to number allergy) all_allergens
