# ObservedArrayList

public class ObservedArrayList<T> <: ObservedComplexAbstract

Observable `ArrayList<T>` wrapper. Mutations through this class notify registered `Observer`s so that bound UI re-renders.

---

## API

### init
```
public init(initValue: ArrayList<T>)
```

- description:Constructs an ObservedArrayList wrapping the given `initValue` ArrayList.

### init
```
public init(initValue: Array<T>)
```

- description:Constructs an ObservedArrayList initialised from the given `initValue` array.

### subscribeInner
```
public func subscribeInner(observer: Observer): Unit
```

- description:Subscribes `observer` to receive change notifications from this list.

### unsubscribeInner
```
public func unsubscribeInner(observer: Observer): Unit
```

- description:Unsubscribes `observer` so it no longer receives change notifications.

### get
```
public func get(): ArrayList<T>
```

- description:Returns the underlying `ArrayList<T>` value.
- return:ArrayList<T>

### set
```
public func set(newValue: ArrayList<T>): Unit
```

- description:Replaces the underlying value with `newValue` (ArrayList) and notifies observers.

### set
```
public func set(newValue: Array<T>): Unit
```

- description:Replaces the underlying value with `newValue` (Array) and notifies observers.

### set
```
public func set(newValue: ObservedComplexAbstract): Unit
```

- description:Replaces the underlying value from another `ObservedComplexAbstract` and notifies observers.

### operator []
```
public operator func [](index: Int64): T
```

- description:Returns the element at `index`.
- return:T

### operator []
```
public operator func [](index: Int64, value!: T): Unit
```

- description:Sets the element at `index` to `value` and notifies observers.

### isEmpty
```
public func isEmpty(): Bool
```

- description:Returns whether the list is empty.
- return:Bool

### clone
```
public func clone(): ObservedArrayList<T>
```

- description:Returns a shallow copy of this ObservedArrayList.
- return:ObservedArrayList<T>

### clear
```
public func clear(): Unit
```

- description:Removes all elements and notifies observers.

### append
```
public func append(element: T): Unit
```

- description:Appends `element` to the end of the list and notifies observers.

### appendAll
```
public func appendAll(elements: Collection<T>): Unit
```

- description:Appends all `elements` to the end of the list and notifies observers.

### insert
```
public func insert(index: Int64, element: T): Unit
```

- description:Inserts `element` at `index` and notifies observers.

### insertAll
```
public func insertAll(index: Int64, elements: Collection<T>): Unit
```

- description:Inserts all `elements` starting at `index` and notifies observers.

### prepend
```
public func prepend(element: T): Unit
```

- description:Prepends `element` to the start of the list and notifies observers.

### prependAll
```
public func prependAll(elements: Collection<T>): Unit
```

- description:Prepends all `elements` to the start of the list and notifies observers.

### remove
```
public func remove(index: Int64): T
```

- description:Removes and returns the element at `index`, notifying observers.
- return:T

### remove
```
public func remove(range: Range<Int64>): Unit
```

- description:Removes all elements in `range` and notifies observers.

### removeIf
```
public func removeIf(predicate: (T) -> Bool): Unit
```

- description:Removes all elements for which `predicate` returns `true`, notifying observers.

## Fields

- size:Int64
