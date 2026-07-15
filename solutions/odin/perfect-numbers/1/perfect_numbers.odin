package perfect_numbers

Classification :: enum {
	Perfect,
	Abundant,
	Deficient,
	Undefined,
}

aliquot :: proc(number: uint) -> uint {
	sum: uint = 0
	for i in 1 ..< number {
		if (number % i == 0) {
			sum += i
		}
	}
	return sum
}

classify :: proc(number: uint) -> Classification {
	if (number < 1) {
		return .Undefined
	}

	al := aliquot(number)
	if (al == 1) {
		return .Deficient
	} else if (number == al) {
		return .Perfect
	} else if (number < al) {
		return .Abundant
	} else if (number > al) {
		return .Deficient
	}

	return .Undefined
}
