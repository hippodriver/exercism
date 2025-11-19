import std/sequtils

type
  Plant* = enum
    Clover, Grass, Radishes, Violets

proc charToPlant(c: char): Plant =
  return case c:
    of 'G': Grass
    of 'C': Clover
    of 'R': Radishes
    of 'V': Violets
    else: raise newException(ValueError, "Unsupported plant character: " & c)

proc studentToIndices(student: string, garden: string): seq[int] =
  let offset = int((garden.len + 1) / 2)
  return case student:
    of "Alice": @[0, 1, offset + 0, offset + 1]
    of "Bob": @[2, 3, offset + 2, offset + 3]
    of "Charlie": @[4, 5, offset + 4, offset + 5]
    of "David": @[6, 7, offset + 6, offset + 7]
    of "Eve": @[8, 9, offset + 8, offset + 9]
    of "Fred": @[10, 11, offset + 10, offset + 11]
    of "Ginny": @[12, 13, offset + 12, offset + 13]
    of "Harriet": @[14, 15, offset + 14, offset + 15]
    of "Ileana": @[16, 17, offset + 16, offset + 17]
    of "Joseph": @[18, 19, offset + 18, offset + 19]
    of "Kincaid": @[20, 21, offset + 20, offset + 21]
    of "Larry": @[22, 23, offset + 22, offset + 23]
    else: raise newException(ValueError, "Unsupported student name")

proc plants*(garden: string, student: string): seq[Plant] =
  let indices = studentToIndices(student, garden)
  let abbrevPlants = indices.foldl(a & garden[b], newSeq[char]())
  abbrevPlants.map(proc(p: char): Plant = charToPlant(p))
