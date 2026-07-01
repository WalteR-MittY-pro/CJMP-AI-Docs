# Data Source (cj_data_source)

Lazy-loading column list (LazyForEach) data change operations, the data-source interface, and the change listener used to trigger incremental refresh.

---

## DataOperation
```
public interface DataOperation
```

Marker interface implemented by all data operations passed to `DataChangeListener.onDatasetChange`.

### Data Operations

#### DataAddOperation
```
public struct DataAddOperation <: DataOperation
```

Represents an "add" operation: insert `count` items at `index`, optionally identified by `key` (single) or `keys` (multiple).

##### Fields
- index:Int32
- count:Int32
- key:?String
- keys:?Array<String>

##### API

###### init
```
public DataAddOperation(index: Int32, count!: Int32 = 1, key!: ?String = None, keys!: ?Array<String> = None)
```

- description:Constructs an add operation at `index` for `count` items, with optional `key` or `keys`.

#### DataDeleteOperation
```
public struct DataDeleteOperation <: DataOperation
```

Represents a "delete" operation: remove `count` items starting at `index`.

##### Fields
- index:Int32
- count:Int32

##### API

###### init
```
public DataDeleteOperation(public let index: Int32, public let count!: Int32 = 1)
```

- description:Constructs a delete operation at `index` for `count` items (default 1).

#### DataChangeOperation
```
public struct DataChangeOperation <: DataOperation
```

Represents a "change" operation: the item at `index` (optionally identified by `key`) was modified.

##### Fields
- index:Int32
- key:?String

##### API

###### init
```
public DataChangeOperation(public let index: Int32, public let key!: ?String = "")
```

- description:Constructs a change operation at `index` with optional `key`.

#### DataMoveOperation
```
public struct DataMoveOperation <: DataOperation
```

Represents a "move" operation: the item at `from` is moved to `to`.

##### Fields
- from:Int32
- to:Int32
- key:?String

##### API

###### init
```
public DataMoveOperation(public let from!: Int32, public let to!: Int32, public let key!: ?String = "")
```

- description:Constructs a move operation from `from` to `to` with optional `key`.

#### DataExchangeOperation
```
public struct DataExchangeOperation <: DataOperation
```

Represents an "exchange" operation: swap items at `start` and `end`, identified by `key.start` and `key.end`.

##### Fields
- start:Int32
- end:Int32
- key:ExchangeKey

##### API

###### init
```
public DataExchangeOperation(public let start!: Int32, public let end!: Int32, public let key!: ExchangeKey = ExchangeKey())
```

- description:Constructs an exchange operation between `start` and `end` with an `ExchangeKey` (defaults to empty strings).

#### DataReloadOperation
```
public struct DataReloadOperation <: DataOperation
```

Represents a "reload" operation: the whole data set should be reloaded.

##### API

###### init
```
public DataReloadOperation()
```

- description:Constructs a reload operation.

### ExchangeKey
```
public struct ExchangeKey
```

Pair of keys identifying the two items involved in a `DataExchangeOperation`.

#### Fields
- start:String
- end:String

#### API

##### init
```
public ExchangeKey(public let start!: String = "", public let end!: String = "")
```

- description:Constructs an ExchangeKey with `start` and `end` keys (default empty strings).

---

## IDataSource
```
public interface IDataSource<T>
```

Data-source contract consumed by `LazyForEach`. Implementations supply the total count, the item at a given index, and register/unregister change listeners.

### API

#### totalCount
```
func totalCount(): Int64
```

- description:Returns the total number of items in the data source.
- return:Int64

#### getData
```
func getData(index: Int64): T
```

- description:Returns the item at `index`.
- return:T

#### onRegisterDataChangeListener
```
func onRegisterDataChangeListener(listener: DataChangeListener): Unit
```

- description:Registers a `listener` to receive data-change notifications.

#### onUnregisterDataChangeListener
```
func onUnregisterDataChangeListener(listener: DataChangeListener): Unit
```

- description:Unregisters a previously registered `listener`.

---

## DataChangeListener
```
public class DataChangeListener <: RemoteData
```

Listener held by `LazyForEach`. The data source calls its `onDataXxx` / `onDatasetChange` methods to trigger an incremental refresh when the underlying data changes.

### API

#### init
```
public DataChangeListener(id: Int64)
```

- description:Constructs a listener wrapping the given native handle id.

#### onDataReloaded
```
public func onDataReloaded(): Unit
```

- description:Notifies that the whole data set was reloaded; triggers a full refresh.

#### onDataAdd
```
public func onDataAdd(index: Int64): Unit
```

- description:Notifies that an item was added at `index`.

#### onDataDelete
```
public func onDataDelete(index: Int64): Unit
```

- description:Notifies that the item at `index` was deleted.

#### onDataChange
```
public func onDataChange(index: Int64): Unit
```

- description:Notifies that the item at `index` changed.

#### onDataMove
```
public func onDataMove(fromIdx: Int64, toIdx: Int64): Unit
```

- description:Notifies that the item at `fromIdx` was moved to `toIdx`.

#### onDatasetChange
```
public func onDatasetChange(dataOperations: ArrayList<DataOperation>): Unit
```

- description:Notifies the listener of a batch of `dataOperations` (add/delete/change/move/exchange/reload) applied atomically. No-op when the list is empty.
