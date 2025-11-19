import std/times

type
  Schedule* = enum
    Teenth, First, Second, Third, Fourth, Last

proc filterWeekDays(base: DateTime, weekDay: WeekDay): seq[int] =
  let daysInMonth = getDaysInMonth(base.month, base.year)
  var current = base
  for i in 1..daysInMonth:
    if current.weekday == weekday:
      result.add(i)
    current += initDuration(days = 1)


proc meetup*(year: int, month: int, schedule: Schedule, day: WeekDay): string =
  let base = dateTime(year, Month(month), 1)
  let days = filterWeekDays(base, day)
  echo "Filtered days: " & $days
  let day = case schedule:
    of First: days[0]
    of Second: days[1]
    of Third: days[2]
    of Fourth: days[3]
    of Last: days[^1]
    of Teenth: 
      if days[1] >= 13:
        days[1]
      elif days[2] >= 13:
        days[2]
      else:
       days[3]
  let finalDate = dateTime(year, Month(month), day)
  return finalDate.format("yyyy-MM-dd")
