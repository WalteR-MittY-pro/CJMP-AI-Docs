# ObservedProperty

public class ObservedProperty<T> <: ObservedPropertyAbstract<T>

Observable property holding a single value of type `T`. Reads/writes through `get`/`set` notify registered `Observer`s so that bound UI re-renders.

---

## API

### init
```
public init(info: String, initValue: T)
```

- description:Constructs an ObservedProperty with the given debug `info` and initial value `initValue`.

### get
```
public func get(): T
```

- description:Returns the current value, registering the active read context as a dependent if any.
- return:T

### getInner
```
public func getInner(): T
```

- description:Returns the current value without registering any dependent (raw read).
- return:T

### set
```
public open func set(newValue: T): Unit
```

- description:Replaces the current value with `newValue` and notifies observers if the value changed.

### subscribeEx
```
public func subscribeEx(observer: Observer)
```

- description:Subscribes `observer` to receive change notifications from this property.

### unsubscribeEx
```
public func unsubscribeEx(observer: Observer)
```

- description:Unsubscribes `observer` so it no longer receives change notifications.

### createProp
```
public func createProp(info: String): ObservedProperty<T>
```

- description:Creates and returns a downstream one-way-bound `ObservedProperty<T>` with the given debug `info`.
- return:ObservedProperty<T>
