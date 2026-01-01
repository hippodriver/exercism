let two_fer name =
  match name with
  | None -> "One for you, one for me."
  | Some n -> "One for " ^ n ^", one for me."
