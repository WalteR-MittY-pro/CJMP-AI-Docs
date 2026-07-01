# Row

Horizontal linear layout container, child elements are arranged along the horizontal direction.

---

## init
```
public init(child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
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
public init(space: Length)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - space:child element spacing

```
public init(space: Length, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - space:child element spacing
  - child:child content builder function

## alignItems
```
public func alignItems(algin: VerticalAlign): This
```

- description:Sets the cross-axis alignment of children to `algin` (`VerticalAlign` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - algin: vertical alignment, VerticalAlign enum
- return:This

## justifyContent
```
public func justifyContent(algin: FlexAlign): This
```

- description:Sets the main-axis distribution of children to `algin` (`FlexAlign` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - algin: distribution mode, FlexAlign enum
- return:This

## width
```
public func width(value: Length): This
```

- description:Sets the Row container's overall width to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the Row container's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This
