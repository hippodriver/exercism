package darts

import "core:math"

score :: proc(x, y: f64) -> int {
	dist : f64 = math.sqrt(x * x + y * y)
	points : int = 0
	if (dist <= 1.0) {
		points = 10
	} else if (dist <= 5) {
		points = 5
	} else if (dist <= 10) {
		points = 1
	}
	return points
}
