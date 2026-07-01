# ObservedComplexAbstract

public abstract class ObservedComplexAbstract <: Observable

Abstract base class for observable complex containers (e.g. `ObservedArray`, `ObservedArrayList`, `ObservedObject`). Provides the inner subscribe/unsubscribe hooks, observer inheritance, dependent-element-id management, info/props-info bookkeeping and change notification.

---

## API

### subscribeInner
```
public func subscribeInner(observer: Observer): Unit
```

- description:Abstract. Subclasses subscribe `observer` to this container and propagate the subscription to nested observable children.

### unsubscribeInner
```
public func unsubscribeInner(observer: Observer): Unit
```

- description:Abstract. Subclasses unsubscribe `observer` from this container and propagate the unsubscription to nested observable children.

### inheritObservers
```
public func inheritObservers(newObservers: ArrayList<Observer>)
```

- description:Subscribes each observer in `newObservers` to this container via `subscribeInner`. Used to transfer observer subscriptions when a container's value is replaced.

### setDependentElementIds
```
public func setDependentElementIds(dependentElementIds: ArrayList<Int64>)
```

- description:Sets the list of dependent element IDs (`dependentElementIds`) that should be re-rendered when this container changes.

### getInfo
```
public func getInfo(): String
```

- description:Returns the debug info string of this container.
- return:String

### setInfo
```
public func setInfo(info: String)
```

- description:Sets the debug info string of this container to `info`.

### getPropsInfo
```
public func getPropsInfo(): ArrayList<String>
```

- description:Returns the list of property-info strings accumulated for this container.
- return:ArrayList<String>

### addPropsInfo
```
public func addPropsInfo(info: String): Unit
```

- description:Appends `info` to the list of property-info strings for this container.

### notifyChanges
```
public func notifyChanges()
```

- description:Notifies all subscribers of a change. If partial update is enabled, only the registered dependent element IDs are notified; otherwise all observers are notified.
