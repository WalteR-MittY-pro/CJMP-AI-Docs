# ObservedArray

public class ObservedArray<T> <: ObservedComplexAbstract

Observable `Array<T>` wrapper. Mutations through this class notify registered `Observer`s so that bound UI re-renders.

---

## API

### init
```
public init(initValue: Array<T>)
```

- description:Constructs an ObservedArray initialised from the given `initValue` array.

### subscribeInner
```
public func subscribeInner(observer: Observer): Unit
```

- description:Subscribes `observer` to receive change notifications from this array.

### unsubscribeInner
```
public func unsubscribeInner(observer: Observer): Unit
```

- description:Unsubscribes `observer` so it no longer receives change notifications.

### get
```
public func get(): Array<T>
```

- description:Returns the underlying `Array<T>` value.
- return:Array<T>

### set
```
public func set(newValue: Array<T>): Unit
```

- description:Replaces the underlying value with `newValue` and notifies observers.

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

## Fields

- size:Int64
