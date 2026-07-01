# EventCallBack1

public abstract class EventCallBack1<A> <: EventBase

Single-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event1.emit`.

---

## API

### invoke
```
public open func invoke(arg: A): Unit
```

- description:Invokes the callback with `arg`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
