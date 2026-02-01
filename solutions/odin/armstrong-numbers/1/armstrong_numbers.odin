package armstrong_numbers

import "core:strconv"

pow :: proc(x: u128, n: int) -> u128 {
	prod: u128 = x
	for i := 1; i < n; i += 1 {
		prod *= x
	}
	return prod
}

is_armstrong_number :: proc(n: u128) -> bool {
	buf: [40]byte
	str : string = strconv.write_u128(buf[:], n, 10)
	power : int = len(str)
	rest: u128 = n
	sum: u128 = 0
	for rest > 0 {
		digit: u128 = rest % 10
		sum += pow(digit, power)
		rest = rest / 10
	}
	return sum == n
}
