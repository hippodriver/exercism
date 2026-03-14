package rna_transcription

import "core:strings"

to_rna :: proc(dna: string) -> (rna: string, ok: bool) {
	buffer := strings.builder_make()
	for c in dna {
		switch c {
			case 'G': strings.write_rune(&buffer, 'C')
			case 'C': strings.write_rune(&buffer, 'G')
			case 'T': strings.write_rune(&buffer, 'A')
			case 'A': strings.write_rune(&buffer, 'U')
			case: return "", false
		}
	}
	return strings.to_string(buffer), true
}
