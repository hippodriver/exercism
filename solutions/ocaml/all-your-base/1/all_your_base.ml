type base = int

let rec power x n =
    match n with
    | 0 -> 1
    | 1 -> x
    | _ -> x * power x (n - 1)


let rec sum_up digits base sum =
    let len = List.length digits in
    match digits with
    | [] -> sum
    | x :: xs -> sum_up xs base (sum + x * power base (len - 1))

let rec divide number base (digits: int list) =
    match number with
    | 0 -> if (List.is_empty digits) then [0] else digits
    | _ -> divide (number / base) base ((number mod base) :: digits)

let validate_digits digits max =
    digits |> List.filter (fun x -> (x > max) || (x < 0)) |> List.is_empty

let convert_bases ~from ~digits ~target =
    if (from < 2) || (target < 2) || (not (validate_digits digits (from - 1))) then None else begin
        let number = sum_up digits from 0 in
        let _ = print_string ("sum=" ^ (Int.to_string number) ^ "\n") in
        Some (divide number target [])
    end
