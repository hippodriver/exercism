let listify (row : int * char list) : (char * int) list =
  let value = fst row in
  List.fold_left (fun a c ->  ((Char.lowercase_ascii c), value) :: a) [] (snd row)

let transform mapping =
  List.fold_left (fun a r -> List.append a (listify r)) [] mapping
  |> List.sort (fun a b -> Char.compare (fst a)  (fst b))
