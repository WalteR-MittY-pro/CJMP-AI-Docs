# Event0

public class Event0 <: EventBase

Zero-argument event. Provides `on`/`off`/`emit` for subscribing to and triggering the event.

---

## API

### on
```
public func on(callback: EventCallBack0): Unit
```

- description:Registers `callback` to be invoked when this event is emitted.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### off
```
public func off(callback: EventCallBack0): Unit
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
public func emit(): Unit
```

- description:Emits this event, invoking all currently registered callbacks in registration order.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
