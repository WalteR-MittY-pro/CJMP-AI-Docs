# ObservedObject

public class ObservedObject <: ObservedComplexAbstract

Observable object that publishes a set of named `ObservedPropertyAbstract` variables. Subscribers propagated via `subscribeInner` are forwarded to each publish variable.

---

## API

### addPublishVar
```
public func addPublishVar(publishVar: ObservedPropertyAbstract)
```

- description:Registers `publishVar` as one of this object's published observable variables. Subscribers added via `subscribeInner` will be forwarded to it.

### getPublishVar
```
public func getPublishVar(): ArrayList<ObservedPropertyAbstract>
```

- description:Returns the list of published observable variables registered on this object.
- return:ArrayList<ObservedPropertyAbstract>

### subscribeInner
```
public func subscribeInner(observer: Observer): Unit
```

- description:Subscribes `observer` to every published variable on this object (the observer will receive change notifications from any of them).

### unsubscribeInner
```
public func unsubscribeInner(observer: Observer): Unit
```

- description:Unsubscribes `observer` from every published variable on this object.
