type
  Allergen* = enum
    Eggs, Peanuts, Shellfish, Strawberries, Tomatoes, Chocolate, Pollen, Cats

proc bits(allergen: Allergen): int =
  case allergen:
    of Eggs:
      return 1
    of Peanuts:
      return 2
    of Shellfish:
      return 4
    of Strawberries:
      return 8
    of Tomatoes:
      return 16
    of Chocolate:
      return 32
    of Pollen:
      return 64
    of Cats:
      return 128

proc isAllergicTo*(score: int, allergen: Allergen): bool =
  return (score and bits(allergen)) != 0

proc allergies*(score: int): set[Allergen] =
  var all: set[Allergen] = {}
  for gen in Allergen:
    if isAllergicTo(score, gen):
      all.incl(gen)
  return all
