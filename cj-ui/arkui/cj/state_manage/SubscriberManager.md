# SubscriberManager

public class SubscriberManager

Subscriber manager (singleton). Allocates element IDs and maintains the mapping between element IDs and `Observer`s.

---

## API

### getInstance
```
public static func getInstance(): SubscriberManager
```

- description:Returns the singleton `SubscriberManager` instance.
- return:SubscriberManager

### makeId
```
public func makeId(): Int64
```

- description:Allocates and returns a new unique element ID.
- return:Int64

### has
```
public func has(id: Int64): Bool
```

- description:Returns whether an `Observer` is registered for the given element `id`.
- return:Bool

### get
```
public func get(id: Int64): Option<Observer>
```

- description:Returns the `Observer` registered for `id`, or `None` if no observer is registered.
- return:Option<Observer>

### delete
```
public func delete(value: Observer): Unit
```

- description:Removes the given `value` observer from the manager.

### add
```
public func add(value: Observer): Bool
```

- description:Registers `value` with the manager. Returns `true` if registration succeeded, `false` otherwise (e.g. duplicate).
- return:Bool

### sizeOfManager
```
public func sizeOfManager(): Int64
```

- description:Returns the number of observers currently registered with the manager.
- return:Int64

### dumpSubscriberInfo
```
public func dumpSubscriberInfo(): Unit
```

- description:Dumps diagnostic information about all registered subscribers (for debugging).
