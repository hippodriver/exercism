let reverse_string s =
  String.fold_left (fun a b -> (String.make 1 b) ^ a) "" s
