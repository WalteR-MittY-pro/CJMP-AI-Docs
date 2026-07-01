# CallbackWithReturn

public abstract class CallbackWithReturn<A>

Callback with return value encapsulation. Subclasses override `invoke` to provide the actual behaviour.

---

## API

### invoke
```
public open func invoke(): A
```

- description:Invokes the callback with no arguments and returns the result of type `A`.
- return:A
