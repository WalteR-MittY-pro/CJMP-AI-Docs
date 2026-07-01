# PlatformView

public class PlatformView <: ContainerBase

Platform native view container, used to embed platform-side (Android/iOS) native Views.

> Note:Not annotated with `@APILevel` metadata in source.

---

## init
```
public init(label: String)
```

- description:Constructs a PlatformView identified by the given `label` (the platform-side view type identifier) and registers it with the native PlatformView factory.

> Inherits from ContainerBase; see [ContainerBase](./ContainerBase.md) for common methods.
