import std/sequtils
import algorithm

type
  Student* = object
    name*: string
    grade*: int

  School* = object
    students*: seq[Student]

proc roster*(school: School): seq[string] =
  ## Returns the names of every student in the `school`, sorted by grade then name.
  let sorted_by_name = school.students.sortedByIt(it.name)
  let sorted_by_grade = sorted_by_name.sortedByIt(it.grade)

  return sorted_by_grade.map(proc(s: Student): string = s.name)


proc addStudent*(school: var School, name: string, grade: int) =
  ## Adds a student with `name` and `grade` to the `school`.
  ##
  ## Raises a `ValueError` if `school` already contains a student named `name`.
  if school.students.map(proc(s: Student): string = s.name).contains(name):
    raise newException(ValueError, "student already exists")
  school.students.add(Student(name: name, grade: grade))

proc grade*(school: School, grade: int): seq[string] =
  ## Returns the names of the students in the given `school` and `grade`, in
  ## alphabetical order.
  let stud_with_grade = school.students.filter(proc(s: Student): bool = s.grade == grade)
  let stud_names = stud_with_grade.map(proc(s: Student): string = s.name)
  let stud_names_sorted = sorted(stud_names)
  return stud_names_sorted
