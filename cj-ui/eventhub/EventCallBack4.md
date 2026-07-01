# EventCallBack4

public abstract class EventCallBack4<A1, A2, A3, A4> <: EventBase

Four-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event4.emit`.

---

## API

### invoke
```
public open func invoke(arg1: A1, arg2: A2, arg3: A3, arg4: A4): Unit
```

- description:Invokes the callback with `arg1`, `arg2`, `arg3`, `arg4`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
