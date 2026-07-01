# EventCallBack5

public abstract class EventCallBack5<A1, A2, A3, A4, A5> <: EventBase

Five-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event5.emit`.

---

## API

### invoke
```
public open func invoke(arg1: A1, arg2: A2, arg3: A3, arg4: A4, arg5: A5): Unit
```

- description:Invokes the callback with `arg1`..`arg5`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
