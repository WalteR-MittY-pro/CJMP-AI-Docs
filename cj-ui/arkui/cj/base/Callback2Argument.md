# Callback2Argument

public abstract class Callback2Argument<A, B>

Two-argument callback encapsulation. Subclasses override `invoke` to provide the actual behaviour.

---

## API

### invoke
```
public open func invoke(arg1: A, arg2: B): Unit
```

- description:Invokes the callback with `arg1` and `arg2`.
