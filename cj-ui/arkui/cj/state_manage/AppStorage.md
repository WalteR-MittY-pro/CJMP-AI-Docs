# AppStorage

Application-level global state storage, provides `link`/`setAndLink`/`setAndProp`/`has`/`get`/`set`/`setOrCreate`/`delete`/`keys`/`size`/`clear`. All members are static.

---

## API

### link
```
public static func link<T>(key: String): ?ObservedProperty<T>
```

- description:Returns an `ObservedProperty<T>` two-way bound to the global property `key`, or `None` if the property does not exist.
- return:?ObservedProperty<T>

### setAndLink
```
public static func setAndLink<T>(key: String, defaultValue: T): ObservedProperty<T>
```

- description:Sets `key` to `defaultValue` if it does not exist, then returns an `ObservedProperty<T>` two-way bound to `key`.
- return:ObservedProperty<T>

### setAndProp
```
public static func setAndProp<T>(propName: String, defaultValue: T): ObservedProperty<T>
```

- description:Sets `propName` to `defaultValue` if it does not exist, then returns an `ObservedProperty<T>` one-way (down-stream) bound to `propName`.
- return:ObservedProperty<T>

### has
```
public static func has(propName: String): Bool
```

- description:Returns whether a property named `propName` exists in the AppStorage.
- return:Bool

### get
```
public static func get<T>(key: String): ?T
```

- description:Returns the value of the global property `key`, or `None` if it does not exist.
- return:?T

### set
```
public static func set<T>(key: String, newValue: T): Bool
```

- description:Sets the existing global property `key` to `newValue`. Returns `true` if the property existed and was updated, `false` otherwise.
- return:Bool

### setOrCreate
```
public static func setOrCreate<T>(key: String, newValue: T): Unit
```

- description:Sets the global property `key` to `newValue` if it exists, otherwise creates it.

### delete
```
public static func delete(key: String): Bool
```

- description:Deletes the global property `key`. Returns `true` if the property existed and was deleted, `false` otherwise.
- return:Bool

### keys
```
public static func keys(): EquatableCollection<String>
```

- description:Returns the collection of all property keys currently held in the AppStorage.
- return:EquatableCollection<String>

### size
```
public static func size(): Int64
```

- description:Returns the number of properties currently held in the AppStorage.
- return:Int64

### clear
```
public static func clear(): Bool
```

- description:Removes all properties from the AppStorage. Returns `true` on success.
- return:Bool
