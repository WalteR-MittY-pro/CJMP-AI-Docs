# Event2

public class Event2<A1, A2> <: EventBase

Two-argument event. Provides `on`/`off`/`emit` for subscribing to and triggering the event.

---

## API

### on
```
public func on(callback: EventCallBack2<A1, A2>): Unit
```

- description:Registers `callback` to be invoked when this event is emitted.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### off
```
public func off(callback: EventCallBack2<A1, A2>): Unit
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
public func emit(arg1: A1, arg2: A2): Unit
```

- description:Emits this event with `arg1` and `arg2`, invoking all currently registered callbacks in registration order.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
