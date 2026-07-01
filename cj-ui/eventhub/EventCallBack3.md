# EventCallBack3

public abstract class EventCallBack3<A1, A2, A3> <: EventBase

Three-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event3.emit`.

---

## API

### invoke
```
public open func invoke(arg1: A1, arg2: A2, arg3: A3): Unit
```

- description:Invokes the callback with `arg1`, `arg2`, `arg3`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
