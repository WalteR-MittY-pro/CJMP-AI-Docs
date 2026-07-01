# LocalStorage

Page-level local state storage, provides `has`/`keys`/`get`/`set`/`setOrCreate`/`link`/`setAndLink`/`setAndProp`/`delete`/`clear` and lifecycle callbacks.

---

## API

### init
```
public init()
```

- description:Constructs an empty LocalStorage.

### aboutToBeDeleted
```
public func aboutToBeDeleted(): Bool
```

- description:Called when this LocalStorage is about to be deleted. Returns whether the deletion was handled.
- return:Bool

### has
```
public func has(propName: String): Bool
```

- description:Returns whether a property named `propName` exists in this storage.
- return:Bool

### keys
```
public func keys(): EquatableCollection<String>
```

- description:Returns the collection of all property keys currently held in this storage.
- return:EquatableCollection<String>

### size
```
public func size(): Int64
```

- description:Returns the number of properties currently held in this storage.
- return:Int64

### get
```
public func get<T>(propName: String): ?T
```

- description:Returns the value of the property `propName`, or `None` if it does not exist.
- return:?T

### set
```
public func set<T>(propName: String, newValue: T): Bool
```

- description:Sets the existing property `propName` to `newValue`. Returns `true` if the property existed and was updated, `false` otherwise.
- return:Bool

### setOrCreate
```
public func setOrCreate<T>(propName: String, newValue: T): Bool
```

- description:Sets the property `propName` to `newValue` if it exists, otherwise creates it. Returns `true` on success.
- return:Bool

### link
```
public func link<T>(propName: String): ?ObservedProperty<T>
```

- description:Returns an `ObservedProperty<T>` two-way bound to the property `propName`, or `None` if the property does not exist.
- return:?ObservedProperty<T>

### setAndLink
```
public func setAndLink<T>(propName: String, defaultValue: T): ObservedProperty<T>
```

- description:Sets `propName` to `defaultValue` if it does not exist, then returns an `ObservedProperty<T>` two-way bound to `propName`.
- return:ObservedProperty<T>

### setAndProp
```
public func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>
```

- description:Sets `propName` to `defaultValue` if it does not exist, then returns an `ObservedProperty<T>` one-way (down-stream) bound to `propName`.
- return:ObservedProperty<T>

### delete
```
public func delete(propName: String): Bool
```

- description:Deletes the property `propName`. Returns `true` if the property existed and was deleted, `false` otherwise.
- return:Bool

### clear
```
public func clear(): Bool
```

- description:Removes all properties from this storage. Returns `true` on success.
- return:Bool
