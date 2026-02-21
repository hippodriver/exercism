package all_your_base

import "core:math"
import "core:fmt"
import "core:slice"

Error :: enum {
	None,
	Invalid_Input_Digit,
	Input_Base_Too_Small,
	Output_Base_Too_Small,
	Unimplemented,
}

rebase :: proc(input_base: int, digits: []int, output_base: int) -> ([]int, Error) {
	// validate input
	if input_base < 2 {
		return nil, .Input_Base_Too_Small
	}
	if output_base < 2 {
		return nil, .Output_Base_Too_Small
	}

	// sum up
	sum := 0
	for k in digits {
		if k < 0 || k >= input_base {
			return nil, .Invalid_Input_Digit
		}
		sum = sum * input_base + k  
	}

	// spread into digits
	result : [dynamic]int
	for sum > 0 {
		rest := sum % output_base
		sum = sum / output_base
		append(&result, rest)
	}
	slice.reverse(result[:])

	// handle special cases
	if len(digits) == 0 || len(result) == 0 {
		append(&result, 0)
	}
	

	return result[:], .None
}
