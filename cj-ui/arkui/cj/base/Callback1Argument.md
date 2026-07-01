# Callback1Argument

public abstract class Callback1Argument<A>

Single-argument callback encapsulation. Subclasses override `invoke` to provide the actual behaviour.

---

## API

### invoke
```
public open func invoke(arg: A): Unit
```

- description:Invokes the callback with `arg`.
