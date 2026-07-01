# Callback1ArgumentWithReturn

public abstract class Callback1ArgumentWithReturn<A, B>

Single-argument callback with return value encapsulation. Subclasses override `invoke` to provide the actual behaviour.

---

## API

### invoke
```
public open func invoke(arg1: A): B
```

- description:Invokes the callback with `arg1` and returns the result of type `B`.
- return:B
