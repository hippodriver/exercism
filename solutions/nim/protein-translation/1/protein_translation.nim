proc translate*(s: string): seq[string] =
  echo "string s: " & s
  if s.len == 0:
    return @[]
  if s.len < 3:
    raise newException(ValueError, "sequence to short: " & s)
  let triple = s[0..2]
  let rest = if s.len >= 4: s[3..^1] else: ""
  let head = case triple:
    of "AUG":
      "Methionine" & translate(rest)
    of "UUU", "UUC":
      "Phenylalanine" & translate(rest)
    of "UUA", "UUG":
      "Leucine" & translate(rest)
    of "UCU", "UCC", "UCA", "UCG":
      "Serine" & translate(rest)
    of "UAU", "UAC":
      "Tyrosine" & translate(rest)
    of "UGU", "UGC":
      "Cysteine" & translate(rest)
    of "UGG":
      "Tryptophan" & translate(rest)
    of "UAA", "UAG", "UGA":
      @[]
    else:
      raise newException(ValueError, "Unknown triplet")
  return head
