# Callback3ArgumentWithReturn

public abstract class Callback3ArgumentWithReturn<A, B, C, D>

Three-argument callback with return value encapsulation. Subclasses override `invoke` to provide the actual behaviour.

---

## API

### invoke
```
public open func invoke(arg1: A, arg2: B, arg3: C): D
```

- description:Invokes the callback with `arg1`, `arg2`, `arg3` and returns the result of type `D`.
- return:D
