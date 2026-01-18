
module CharSet = Set.Make(Char)

let is_pangram sentence =
  let sanitized_seq = String.lowercase_ascii sentence |> String.to_seq |> Seq.filter (fun x -> (x >= 'a') && (x <= 'z')) in
  let used_characters = Seq.fold_left (fun acc c -> CharSet.add c acc) CharSet.empty sanitized_seq in
  CharSet.cardinal used_characters = 26
