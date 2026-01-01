let acronym text =
    text
    |> String.map (fun c -> if c = '-' then ' ' else c)
    |> String.to_seq
    |> Seq.filter (fun c -> ((64 < (Char.code c)) && ((Char.code c) < 91)) || ((96 < (Char.code c) && ((Char.code c) < 123))) || c = ' ')
    |> String.of_seq
    |> String.split_on_char ' '
    |> List.to_seq
    |> Seq.filter (fun s -> s <> "")
    |> Seq.map (fun token -> String.get token 0)
    |> Seq.map Char.uppercase_ascii
    |> String.of_seq
