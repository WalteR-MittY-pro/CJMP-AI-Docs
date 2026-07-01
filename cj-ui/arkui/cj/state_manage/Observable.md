# Observable

public abstract class Observable

Observable base class. Provides `subscribe`/`unsubscribe` and subscriber management. Subclasses produce change notifications to the registered `Observer`s.

---

## API

### subscribe
```
public func subscribe(observer: Observer): Unit
```

- description:Registers `observer` to receive change notifications from this observable.

### unsubscribe
```
public func unsubscribe(observer: Observer): Unit
```

- description:Removes `observer` so it no longer receives change notifications.

### isSubscribed
```
public func isSubscribed(observer: Observer): Bool
```

- description:Returns whether `observer` is currently subscribed to this observable.
- return:Bool

### numberOfSubscribers
```
public func numberOfSubscribers(): Int64
```

- description:Returns the number of observers currently subscribed to this observable.
- return:Int64

### unsubscribeAll
```
public func unsubscribeAll(): Unit
```

- description:Removes all observers from this observable.
