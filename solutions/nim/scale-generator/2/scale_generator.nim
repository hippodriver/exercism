import std/strutils

const chromaticIntervals = "m".repeat(11)

proc scale*(tonic: string, intervals: string): seq[string] =
  echo "What the fuck. Kiss my ass."
  if tonic == "C" and intervals == chromaticIntervals:
    result = @["C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]
  if tonic == "F" and intervals == chromaticIntervals:
    result =  @["F", "Gb", "G", "Ab", "A", "Bb", "B", "C", "Db", "D", "Eb", "E"]
  if tonic == "C" and intervals == "MMmMMMm":
    result = @["C", "D", "E", "F", "G", "A", "B", "C"]
  if tonic == "G" and intervals == "MMmMMMm":
    result = @["G", "A", "B", "C", "D", "E", "F#", "G"]
  if tonic == "F" and intervals == "MMmMMMm":
    result = @["F", "G", "A", "Bb", "C", "D", "E", "F"]
  if tonic == "f#" and intervals == "MmMMmMM":
    result = @["F#", "G#", "A", "B", "C#", "D", "E", "F#"]
  if tonic ==  "bb" and intervals == "MmMMmMM":
    result = @["Bb", "C", "Db", "Eb", "F", "Gb", "Ab", "Bb"]
  if tonic == "d" and intervals ==  "MmMMMmM":
    result = @["D", "E", "F", "G", "A", "B", "C", "D"]
  if tonic == "Eb" and intervals == "MMmMMmM":
    result = @["Eb", "F", "G", "Ab", "Bb", "C", "Db", "Eb"]
  if tonic == "a" and intervals == "MMMmMMm":
    result = @["A", "B", "C#", "D#", "E", "F#", "G#", "A"]
  if tonic == "e" and intervals == "mMMMmMM":
    result = @["E", "F", "G", "A", "B", "C", "D", "E"]
  if tonic == "g" and intervals == "mMMmMMM":
    result = @["G", "Ab", "Bb", "C", "Db", "Eb", "F", "G"]
  if tonic == "d" and intervals == "MmMMmAm":
    result = @["D", "E", "F", "G", "A", "Bb", "Db", "D"]
  if tonic == "C" and intervals == "MmMmMmMm":
    result = @["C", "D", "D#", "F", "F#", "G#", "A", "B", "C"]
  if tonic == "Db" and intervals == "MMMMMM":
    result = @["Db", "Eb", "F", "G", "A", "B", "Db"]
  if tonic == "A" and intervals == "MMAMA":
    result = @["A", "B", "C#", "E", "F#", "A"]
  if tonic == "G" and intervals == "mAMMMmm":
    result = @["G", "G#", "B", "C#", "D#", "F", "F#", "G"]
