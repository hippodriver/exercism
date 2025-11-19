import std/times

proc addGigasecond*(dt: DateTime): DateTime =
  let gigasecond = initDuration(seconds = 1_000_000_000)
  dt + gigasecond