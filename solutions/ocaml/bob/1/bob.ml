let response_for text =
  let s = String.trim text in
  let is_empty_trimmed = String.length  s = 0 in
  let is_uppercase = (String.uppercase_ascii s) = s && (String.uppercase_ascii s) <> (String.lowercase_ascii s) in
  let is_question = (String.ends_with ~suffix:"?" s) in
  match (is_empty_trimmed, is_uppercase, is_question) with
  | (true, _, _) -> "Fine. Be that way!"
  | (false, true, false) -> "Whoa, chill out!"
  | (false, true, true) -> "Calm down, I know what I'm doing!"
  | (false, false, true) -> "Sure."
  | _ -> "Whatever."
