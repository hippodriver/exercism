import sequtils

type
  ComputeFunc = proc(vals: seq[int]): int {.noSideEffect.}
  Callback = proc(val: int)

  Cell* = ref object of RootObj
    currentValue*: int
    dependents*: seq[Cell]

  InputCell* = ref object of Cell

  ComputeCell* = ref object of Cell
    computeFunc: ComputeFunc
    dependencies*: seq[Cell]
    callbacks*: seq[Callback]
    lastValue*: int

proc newInputCell*(val: int): InputCell =
  result = InputCell(currentValue: val, dependents: @[])

proc value*(cell: Cell): int =
  cell.currentValue

proc recalculateAll(cells: seq[Cell]) =
  var processed: seq[pointer] = @[]
  proc wasProcessed(p: pointer): bool =
    for x in processed:
      if x == p: return true
    return false
  proc allDepsProcessed(cc: ComputeCell): bool =
    for d in cc.dependencies:
      if d of ComputeCell and not wasProcessed(cast[pointer](d)):
        return false
    return true
  var toProcess = cells
  while toProcess.len > 0:
    var next: seq[Cell] = @[]
    var madeProgress = false
    for c in toProcess:
      if c of ComputeCell and not wasProcessed(cast[pointer](c)):
        let cc = ComputeCell(c)
        if allDepsProcessed(cc):
          processed.add(cast[pointer](c))
          madeProgress = true
          let depValues = cc.dependencies.mapIt(it.currentValue)
          let newValue = cc.computeFunc(depValues)
          if newValue != cc.lastValue:
            cc.lastValue = newValue
            cc.currentValue = newValue
            for cb in cc.callbacks:
              cb(newValue)
          for d in c.dependents:
            if d of ComputeCell and not wasProcessed(cast[pointer](d)):
              next.add(d)
    if not madeProgress:
      break
    toProcess = next

proc `value=`*(cell: InputCell, val: int) =
  if cell.currentValue != val:
    cell.currentValue = val
    var toRecalc: seq[Cell] = @[]
    for d in cell.dependents:
      if d of ComputeCell:
        toRecalc.add(d)
    recalculateAll(toRecalc)

proc newComputeCell*(dependencies: seq[Cell], compute: ComputeFunc): ComputeCell =
  let computedVal = compute(dependencies.mapIt(it.currentValue))
  result = ComputeCell(
    currentValue: computedVal,
    lastValue: computedVal,
    computeFunc: compute,
    dependencies: dependencies,
    callbacks: @[],
    dependents: @[]
  )
  for dep in dependencies:
    dep.dependents.add(result)

proc newComputeCell*(dependencies: seq[InputCell], compute: ComputeFunc): ComputeCell =
  newComputeCell(dependencies.mapIt(Cell(it)), compute)

proc newComputeCell*(dependencies: seq[ComputeCell], compute: ComputeFunc): ComputeCell =
  newComputeCell(dependencies.mapIt(Cell(it)), compute)

proc addCallback*(cell: ComputeCell, callback: Callback) =
  cell.callbacks.add(callback)

proc removeCallback*(cell: ComputeCell, callback: Callback) =
  cell.callbacks = cell.callbacks.filterIt(it != callback)