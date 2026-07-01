# ObservedPropertyAbstract

public abstract class ObservedPropertyAbstract<T> <: Observable

Abstract base class for observable properties. Provides info bookkeeping, observer (de)subscription via `subscribeEx`/`unsubscribeEx`, change notification and per-element dependency purging.

---

## API

### init
```
public init(info: String)
```

- description:Constructs an observable property with the given debug `info`.

### getInfo
```
public func getInfo(): String
```

- description:Returns the debug info string of this property.
- return:String

### subscribeEx
```
public func subscribeEx(observer: Observer): Unit
```

- description:Subscribes `observer` to receive change notifications from this property.

### unsubscribeEx
```
public func unsubscribeEx(observer: Observer): Unit
```

- description:Unsubscribes `observer` so it no longer receives change notifications.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### notifyChanges
```
public func notifyChanges()
```

- description:Notifies all subscribers of a change. If partial update is enabled, only the registered dependent element IDs are notified; otherwise all observers are notified.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### purgeDependencyOnElmtId
```
public func purgeDependencyOnElmtId(rmElmtId: Int64): Unit
```

- description:Removes the element ID `rmElmtId` from this property's set of dependent element IDs so it is no longer re-rendered on changes.
