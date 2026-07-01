# GridRow

grid row container，by breakpoints（xs/sm/md/lg/xl/xxl）responsive layout，wraps GridCol child item。

---

## GridRowSizeOption
```
public struct GridRowSizeOption
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public GridRowSizeOption(xs!: Length = 0.vp, sm!: Length = 0.vp, md!: Length = 0.vp, lg!: Length = 0.vp, xl!: Length = 0.vp, xxl!: Length = 0.vp)
```

- params:
  - xs / sm / md / lg / xl / xxl: breakpoint values for each breakpoint, default 0vp

## GridRowColumnOption
```
public struct GridRowColumnOption
```

- APILevel:16（@C struct，public）
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public GridRowColumnOption(xs!: Int32 = 12, sm!: Int32 = 12, md!: Int32 = 12, lg!: Int32 = 12, xl!: Int32 = 12, xxl!: Int32 = 12)
```

- params:
  - xs / sm / md / lg / xl / xxl: column count for each breakpoint, default 12

## GutterOption
```
public struct GutterOption
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(x!: Length, y!: Length)
```

- description:Constructs an instance with the given parameters.
- params:
  - x:columnspacing
  - y:rowspacing

### init

```
public init(x!: GridRowSizeOption, y!: GridRowSizeOption)
```

- description:Constructs an instance with the given parameters.
- params:
  - x: column spacing for each breakpoint
  - y: row spacing for each breakpoint

## BreakPoints
```
public struct BreakPoints
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

> Fields for breakpoint boundary values of each breakpoint and the BreakpointsReference reference mode.

## GridRowOptions
```
public struct GridRowOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

> Encapsulates GutterOption spacing, GridRowColumnOption column count, BreakPoints breakpoints, and GridRowDirection direction.

## init
```
public init(options: GridRowOptions, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - options: grid options
  - child: child content builder function (GridCol column list)

## height
```
public func height(value: Length): This
```

- description:Sets the GridRow container's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onBreakpointChange
```
public func onBreakpointChange(callback: (Breakpoint) -> Unit): This
```

- description:Registers the breakpoint change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Breakpoint: current breakpoint
- return:This

## alignItems
```
public func alignItems(value: VerticalAlign): This
```

- description:Sets the cross-axis alignment of children to `value` (`VerticalAlign` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## GridRowDirection
```
public enum GridRowDirection
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - GridRowRow: forward direction
  - RowReverse: reverse direction

## BreakpointsReference
```
public enum BreakpointsReference
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - WindowSize: references window size
  - ComponentSize: references component size
