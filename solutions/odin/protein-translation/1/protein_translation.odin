package protein_translation

// proteins returns the list of aminoacid associated with the rna_strand.
// The second parameter indicates if the translation was successful.
proteins :: proc(rna_strand: string) -> ([]string, bool) {
	acids : [dynamic]string
	remaining := rna_strand
	for len(remaining) > 2 {
		codon := remaining[0:3]
		remaining = remaining[3:]
		if (codon == "AUG") {
			append(&acids, "Methionine")
		} else if (codon == "UUU" || codon == "UUC") {
			append(&acids, "Phenylalanine")
		} else if (codon == "UUA" || codon == "UUG") {
			append(&acids, "Leucine")
		} else if (codon == "UCU" || codon == "UCC" || codon == "UCA" || codon == "UCG") {
			append(&acids, "Serine")
		} else if (codon == "UAU" || codon == "UAC") {
			append(&acids, "Tyrosine")
		} else if (codon == "UGU" || codon == "UGC") {
			append(&acids, "Cysteine")
		} else if (codon == "UGG") {
			append(&acids, "Tryptophan")
		} else if (codon == "UAA" || codon == "UAG" || codon == "UGA") {
			return acids[:], true
		} else {
			return acids[:], false
		}
	}
	return acids[:], len(remaining) == 0
}
