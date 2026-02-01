package hamming

Error :: enum {
	None,
	UnequalLengths,
	Unimplemented,
}

distance :: proc(strand1, strand2: string) -> (int, Error) {
	if len(strand1) != len(strand2) {
		return 0, .UnequalLengths
	}
	dis : int = 0
	for i := 0; i < len(strand1); i += 1 {
		if strand1[i] != strand2[i] {
			dis += 1
		}
	}
	return dis, .None
}
