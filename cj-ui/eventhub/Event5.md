# Event5

public class Event5<A1, A2, A3, A4, A5> <: EventBase

Five-argument event. Provides `on`/`off`/`emit` for subscribing to and triggering the event.

---

## API

### on
```
public func on(callback: EventCallBack5<A1, A2, A3, A4, A5>): Unit
```

- description:Registers `callback` to be invoked when this event is emitted.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### off
```
public func off(callback: EventCallBack5<A1, A2, A3, A4, A5>): Unit
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
public func emit(arg1: A1, arg2: A2, arg3: A3, arg4: A4, arg5: A5): Unit
```

- description:Emits this event with `arg1`..`arg5`, invoking all currently registered callbacks in registration order.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
