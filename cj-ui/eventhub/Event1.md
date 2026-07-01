# Event1

public class Event1<A> <: EventBase

Single-argument event. Provides `on`/`off`/`emit` for subscribing to and triggering the event.

---

## API

### on
```
public func on(callback: EventCallBack1<A>): Unit
```

- description:Registers `callback` to be invoked when this event is emitted.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### off
```
public func off(callback: EventCallBack1<A>): Unit
```

- description:Unregisters `callback` so it is no longer invoked when this event is emitted.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### off
```
public func off(): Unit
```

- description:Unregisters all callbacks previously registered on this event.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### emit
```
public func emit(arg: A): Unit
```

- description:Emits this event with `arg`, invoking all currently registered callbacks in registration order.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
