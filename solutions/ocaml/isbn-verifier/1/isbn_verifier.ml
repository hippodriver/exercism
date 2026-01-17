let is_number = fun c -> c >= '0' && c <= '9'

let is_valid (isbn: string) =
  let normalized_isbn = Seq.filter (fun c -> c <> '-') (String.to_seq isbn) |> String.of_seq in
  if String.length normalized_isbn <> 10 then false else begin
    let start = String.sub normalized_isbn 0 9 in
    if not ((String.for_all is_number start) && (is_number normalized_isbn.[9] || normalized_isbn.[9] = 'X')) then false else begin
    let isbn_digits =
      String.to_seq normalized_isbn
      |> Seq.map (fun c ->
        if c = 'X' then 10
        else Char.code c - Char.code '0'
      ) in
    let sum =
      isbn_digits
      |> Seq.mapi (fun i digit -> digit * (10 - i))
      |> Seq.fold_left (fun acc d -> acc + d) 0 in
    sum mod 11 = 0
  end
end
