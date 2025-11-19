type
  Node*[T] = ref object
    data: T
    prev: Node[T]
    next: Node[T]

  LinkedList*[T] = object ## A doubly linked list.
    first: Node[T]
    last: Node[T]
    len: int
  
proc len*[T](list: LinkedList[T]): int =
  ## Returns the number of nodes in `list`.
  echo "Curent len: " & $list.len
  return list.len

proc push*[T](list: var LinkedList[T], val: T) =
  ## Appends a node with the given `val` to `list`.
  list.len = list.len + 1
  let n = Node[T](data: val, prev: list.last)
  if list.len == 1:
    list.last = n
    list.first = n
  else:
    list.last.next = n
    list.last = n

proc pop*[T](list: var LinkedList[T]): T =
  ## Removes the final node of `list` and returns its value.
  list.len = list.len - 1
  let v = list.last.data
  list.last = list.last.prev
  return v


proc shift*[T](list: var LinkedList[T]): T =
  ## Removes the first node of `list` and returns its value.
  list.len = list.len - 1
  let v = list.first.data
  if list.len > 0:
    list.first = list.first.next
  else:
    list.first = nil
  return v

proc unshift*[T](list: var LinkedList[T], val: T) =
  ## Prepends a node with the given `val` to `list`.
  list.len = list.len + 1
  let n = Node[T](data: val, next: list.first)
  if list.len == 1:
    list.first = n
  else:
    list.first.prev = n
    list.first = n

proc delete*[T](list: var LinkedList[T], val: T) =
  ## Removes a node with value `val` from `list`.
  echo "delete from list: " & $list
  echo "first value: " & $list.first.data
  list.len = list.len - 1
  var current = list.first
  while current.data != val:
    echo "Increment"
    current = current.next
  echo "delete remaining length: " & $list.len
  if list.len > 0:
    if list.first.data == val:
      list.first = current.next
    else:
      current.next.prev = current.prev
      current.prev.next = current.next
