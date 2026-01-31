package leap

is_leap_year :: proc(year: int) -> bool {
	if (year % 400 == 0) {
		return true
	} else if (year % 100 == 0) {
		return false
	} else {
		return year % 4 == 0
	}
	return false
}
