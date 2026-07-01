# EventCallBack0

public abstract class EventCallBack0 <: EventBase

Zero-argument event callback encapsulation. Subclasses override `invoke` to provide the actual behaviour invoked by `Event0.emit`.

---

## API

### invoke
```
public open func invoke(): Unit
```

- description:Invokes the callback with no arguments.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
