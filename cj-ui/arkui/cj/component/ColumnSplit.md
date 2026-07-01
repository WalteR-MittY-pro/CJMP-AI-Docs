# ColumnSplit

Vertical divider layout container, child elements are arranged vertically and can be resized by dragging the dividers.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - content:child content builder function

## resizeable
```
public func resizeable(value: Bool): This
```

- description:Enables or disables dragging of the dividers between children. When `value` is `true` the dividers can be dragged to resize the children; when `false` (default) they are fixed. Returns `This` for chaining.
- params:
  - value:whether draggable
- return:This

## divider
```
public func divider(startMargin!: Length = 0.vp, endMargin!: Length = 0.vp): This
```

- description:Configures the divider between children: `startMargin` is the gap from the previous child (default `0vp`) and `endMargin` is the gap from the next child (default `0vp`). Returns `This` for chaining.
- params:
  - startMargin: start margin, default 0vp
  - endMargin: end margin, default 0vp
- return:This
