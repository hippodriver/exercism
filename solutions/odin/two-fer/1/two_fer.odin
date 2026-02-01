package two_fer

import "core:fmt"
import "core:strings"
import "core:mem"  

two_fer :: proc(name: string = "") -> string {
	s := "One for you, one for me."
	if len(name) > 0 {
		s = fmt.tprintf("One for %s, one for me.", name)
	}
	return s
}
