package difference_of_squares

square_of_sum :: proc(n: int) -> int {
	sum := n * (n+1) / 2
	return sum * sum
}

sum_of_squares :: proc(n: int) -> int {
	sum := 0
	for i in 1..=n {
		sum += i * i
	}
	return sum
}

difference :: proc(n: int) -> int {
	diff := square_of_sum(n) - sum_of_squares(n)
	return diff
}
