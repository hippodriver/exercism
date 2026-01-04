module CharSet = Set.Make(Char);;

let is_isogram (word: string) : bool =
  let char_seq =
    word
    |> String.lowercase_ascii
    |> String.to_seq
    |> Seq.filter (fun c -> ((64 < (Char.code c)) && ((Char.code c) < 91)) || ((96 < (Char.code c) && ((Char.code c) < 123)))) in
  let char_set = Seq.fold_left (fun s c -> CharSet.add c s) CharSet.empty char_seq in
  CharSet.cardinal char_set = (Seq.length char_seq)
