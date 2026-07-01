# Stack

Stacking layout container, child elements are stacked and centered, with later elements covering earlier ones.

---

## init
```
public Stack(child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - child:child content builder function

```
public init()
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

```
public init(alignContent: Alignment)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alignContent:child contentalignmentmode，Alignment enum

```
public init(alignContent: Alignment, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alignContent:child contentalignmentmode
  - child:child content builder function

## width
```
public func width(value: Length): This
```

- description:Sets the Stack container's overall width to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the Stack container's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the Stack container's overall `width` and `height`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height
- return:This

## alignment（deprecated）
```
public func alignment(value: Alignment): This
```

- description:Sets the alignment of children within the Stack to `value` (`Alignment` enum, e.g. `Top`/`Center`/`Bottom`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: alignment mode
- return:This

## alignContent
```
public func alignContent(value: Alignment): This
```

- description:Sets the alignment of overflowed (wrapped) children within the Stack to `value` (`Alignment` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: alignment mode，Alignment enum
- return:This
