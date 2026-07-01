# View context (cj_view_context)

Global animation driver functions.

> Note:Not annotated with `@APILevel` metadata in source.

---

## animateTo
```
public func animateTo(animation: AnimateParam, callback: () -> Unit): Unit
```

- description:Applies an explicit animation: state changes performed inside `callback` are animated according to the `animation` parameters (`AnimateParam`).
- params:
  - animation:animation parameters, AnimateParam (see [cj_animate_param](./cj_animate_param.md))
  - callback:property change closure
