type
  LinkedList*[T] = object ## A doubly linked list.
    first: Node[T]
    last: Node[T]
    len: int
  
  Node[T] = object
    data: T
    prev: Node[T]
    next: Node[T]

proc len*[T](list: LinkedList[T]): int =
  ## Returns the number of nodes in `list`.
  return list.len

proc push*[T](list: var LinkedList[T], val: T) =
  ## Appends a node with the given `val` to `list`.
  echo "Push"
  list.len = list.len + 1
  let n = Node(data: val, left: list.last)
  list.last = n
  echo "Pushed: " & $val

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
  list.first = list.first.next
  return v

proc unshift*[T](list: var LinkedList[T], val: T) =
  ## Prepends a node with the given `val` to `list`.
  list.len = list.len + 1
  let n = Node(data: val, right: list.first)
  list.first = n 

proc delete*[T](list: var LinkedList[T], val: T) =
  ## Removes a node with value `val` from `list`.
  list.len = list.len - 1
  var current = list.first
  while current.data != val:
    current = current.next
  current.next.prev = current.prev
  current.prev.next = current.next
