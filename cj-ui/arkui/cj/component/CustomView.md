# CustomView

public abstract class CustomView <: RemoteView & Observer

Custom view base class. Users inherit this class and declare custom components in @View / @Builder style; combined with ViewBuilder to implement state-driven rebuilds.

> Note:Not annotated with `@APILevel` metadata in source.

---

## loadNativeView
```
public func loadNativeView(view: CustomView): Bool
```

- description:Loads the native counterpart of `view` and binds it to this custom view. Returns `true` if the native view was created and bound successfully, `false` otherwise.
- params:
  - view:customviewinstance
- return:whether successful
