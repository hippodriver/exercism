package collatz_conjecture

// Returns the number of steps to get to a value of 1.
steps :: proc(start: int) -> (result: int, ok: bool) {
	if start < 1 {
		return 0, false
	}
	steps := 0
	n := start
	for n > 1 {
		steps += 1
		if n % 2 == 0 {
			n = n / 2
		} else {
			n = 3 * n + 1
		}
	}
	return steps, true
}
