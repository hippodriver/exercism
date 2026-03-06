package grains

import "core:math"

Error :: enum {
	None = 0,
	InvalidSquare,
	Unimplemented,
}

// Returns the number of grains on the specified square.
square :: proc(n: int) -> (u64, Error) {
	if n < 1 || n > 64 {
		return 0, .InvalidSquare
	}
	count := math.pow(2.0, f64(n - 1.0))
	return u64(count), .None
}

// Returns the total number of squares on the board.
total :: proc() -> (u64, Error) {
	sum : u64
	for i in 1..=64 {
		count, _ : = square(i)
		sum += count
	}
	return sum, .None
}
