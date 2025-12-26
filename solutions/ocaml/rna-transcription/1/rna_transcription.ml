type dna = [ `A | `C | `G | `T ]
type rna = [ `A | `C | `G | `U ]

let single d =
  match d with
  | `G -> `C
  | `C -> `G
  | `T -> `A
  | `A -> `U

let to_rna gens =
  List.map single gens
