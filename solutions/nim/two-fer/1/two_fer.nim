proc twoFer*(name = ""): string =
  if (name == ""):
    "One for you, one for me."
  else:
    "One for " & name & ", one for me."
