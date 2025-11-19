import std/strformat

type
  Clock* = object
    hour*: range[0..23]
    minute*: range[0..59]

  Minutes* = distinct int

proc initClock(normalized_minutes: int): Clock =
  let minutes_per_day = 24 * 60
  let all_minutes_normalized = ((normalized_minutes mod minutes_per_day) + minutes_per_day) mod minutes_per_day
  let final_hour = all_minutes_normalized div 60
  let final_minute = all_minutes_normalized mod 60
  return Clock(hour: final_hour, minute: final_minute)


proc initClock*(hour, minute: int): Clock =
  let all_minutes = minute + 60 * hour
  initClock(all_minutes)

proc `$`*(c: Clock): string =
  return fmt"{c.hour:02}:{c.minute:02}"

proc `+`*(c: Clock, v: Minutes): Clock =
  let prev_minutes = c.minute + 60 * c.hour
  let all_minutes = prev_minutes + v.ord
  initClock(all_minutes)

proc `-`*(c: Clock, v: Minutes): Clock =
  let prev_minutes = c.minute + 60 * c.hour
  let all_minutes = prev_minutes - v.ord
  initClock(all_minutes)

