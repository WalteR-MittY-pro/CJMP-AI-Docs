# RowSplit

Horizontal divider layout container, child elements are arranged horizontally and the divider can be dragged to resize.

---

## init
```
public init(content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - content:child content builder function

## resizeable
```
public func resizeable(value: Bool): This
```

- description:Enables or disables dragging of the dividers between children. When `value` is `true` the dividers can be dragged to resize the children; when `false` (default) they are fixed. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether draggable
- return:This
