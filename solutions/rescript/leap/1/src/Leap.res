let isLeapYear = n => {
	switch n {
	| _ if n % 400 == 0 => true
	| _ if n % 100 == 0 => false
	| _ if n % 4 == 0 => true
	| _ => false
	}
}
