import std/random

randomize()

type
  Name* = array[5, char]
  Robot* = object
    name*: Name

proc genName: array[5, char] =
  let n1 = char(rand(48..57))
  let n2 = char(rand(48..57))
  let n3 = char(rand(48..57))
  let name : array[5, char] = [char(rand(65..90)), char(rand(65..90)), n1, n2, n3]
  echo "name=" & $name
  result = name


proc makeRobot*: Robot =
  let name = genName()
  Robot(name: name)


proc reset*(r: var Robot) =
  r.name = genName()
