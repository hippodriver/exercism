package resistor_color

Color :: enum {
	Black,
	Brown,
	Red,
	Orange,
	Yellow,
	Green,
	Blue,
	Violet,
	Grey,
	White
} 

code :: proc(color: Color) -> int {
	return int(color)
}

// Please fill in the return type.
colors :: proc() -> [10]Color {
	all_colors :=  [10]Color{ .Black, .Brown, .Red, .Orange, .Yellow, .Green, .Blue, .Violet, .Grey, .White}
	return all_colors
}
