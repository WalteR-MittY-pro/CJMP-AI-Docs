# EventCallBack2

public abstract class EventCallBack2<A1, A2> <: EventBase

Two-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event2.emit`.

---

## API

### invoke
```
public open func invoke(arg1: A1, arg2: A2): Unit
```

- description:Invokes the callback with `arg1` and `arg2`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
