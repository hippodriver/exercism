import std/random
import std/sequtils
import std/math

type
  Character* = object
    strength*: int
    dexterity*: int
    constitution*: int
    intelligence*: int
    wisdom*: int
    charisma*: int
    hitpoints*: int

proc roll*: int =
  rand(1..6)

proc ability*: int =
  var nums = @[roll(), roll(), roll(), roll()]
  var min_pos = 0
  var min = nums[min_pos]
  for i in 1 .. 3:
    if nums[i] < min:
      min_pos = i
      min = nums[i]
  nums.delete(min_pos..min_pos)
  return nums[0] + nums[1] + nums[2]


proc modifier*(n: int): int =
  int(floor((n - 10) / 2))

proc initCharacter*: Character =
  let con = ability()
  Character(
    strength: ability(),
    dexterity: ability(),
    constitution: con,
    intelligence: ability(),
    wisdom: ability(),
    charisma: ability(),
    hitpoints: 10 + modifier(con))

