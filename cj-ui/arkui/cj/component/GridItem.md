# GridItem

Grid item component, used as Grid child content, can span multiple rows and columns, supports selection.

---

## GridItemOptions
```
public class GridItemOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(style!: GridItemStyle = GridItemStyle.NONE)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - style:style，default NONE

## init
```
public init()
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

```
public init(child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - child:child content builder function

```
public init(value: GridItemOptions)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:option

```
public init(value: GridItemOptions, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:option
  - child:child content builder function

## columnStart
```
public func columnStart(columnStart: Int32): This
```

- description:Sets the starting column index of the GridItem to `columnStart` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## columnEnd
```
public func columnEnd(columnEnd: Int32): This
```

- description:Sets the ending column index of the GridItem to `columnEnd` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## rowStart
```
public func rowStart(rowStart: Int32): This
```

- description:Sets the starting row index of the GridItem to `rowStart` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## rowEnd
```
public func rowEnd(rowEnd: Int32): This
```

- description:Sets the ending row index of the GridItem to `rowEnd` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## selectable
```
public func selectable(value: Bool): This
```

- description:Sets whether the GridItem can be selected. When `value` is `true` (default) the item responds to selection gestures; when `false` it does not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## selected
```
public func selected(value: Bool): This
```

- description:Sets whether the GridItem is currently selected. When `value` is `true` the item renders in its selected state. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onSelect
```
public func onSelect(callback: (Bool) -> Unit): This
```

- description:Registers the select callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Bool:whether selected
- return:This

## GridItemStyle
```
public enum GridItemStyle
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - NONE:no special style
  - PLAIN: plain style
