proc isPaired*(s: string): bool =
  var stack: seq[char]
  for c in s.items:
    if c in {'{', '[' , '('}:
      stack.add(c)
    else:
      case c:
        of '}':
          if stack.len == 0 or stack.pop != '{':
            return false
        of ']':
          if stack.len == 0 or stack.pop != '[':
            return false
        of ')':
          if stack.len == 0 or stack.pop != '(':
            return false
        else:
          discard
  return stack.len == 0          





