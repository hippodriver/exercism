package all_your_base

import "core:math"
import "core:fmt"

Error :: enum {
	None,
	Invalid_Input_Digit,
	Input_Base_Too_Small,
	Output_Base_Too_Small,
	Unimplemented,
}

rebase :: proc(input_base: int, digits: []int, output_base: int) -> ([]int, Error) {
	// sum up
	sum := 0
	pos := len(digits) - 1
	for k in digits {
		sum = sum + k * int(math.pow(f64(input_base), f64(pos)))
		pos = pos - 1
	}
	fmt.printf("Calculated sum: %d", sum)

	// spread into digits
	result : []int

	

	return nil, .Unimplemented
}
