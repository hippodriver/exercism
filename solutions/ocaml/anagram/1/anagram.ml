let isAnagram target candidate =
  if target = candidate then false else begin
  let sort_string_chars s =
    s
    |> String.to_seq
    |> List.of_seq
    |> List.sort Char.compare
    |> List.to_seq
    |> String.of_seq
  in
  let sorted_target = sort_string_chars target in
  let sorted_candidate = sort_string_chars candidate in
  sorted_target = sorted_candidate
  end



let anagrams target candidates =
  let canonical_target = String.lowercase_ascii target in
  List.filter (fun x -> isAnagram (String.lowercase_ascii x) canonical_target) candidates
