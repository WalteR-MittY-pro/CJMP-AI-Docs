# GridCol

Grid column component, as GridRow child content, configures cross-column count, offset, and sort order by breakpoints (xs/sm/md/lg/xl/xxl).

---

## GridColColumnOption
```
public struct GridColColumnOption
```

- APILevel:16（@C struct，public）
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public GridColColumnOption(xs!: Int32 = 12, sm!: Int32 = 12, md!: Int32 = 12, lg!: Int32 = 12, xl!: Int32 = 12, xxl!: Int32 = 12)
```

- params:
  - xs / sm / md / lg / xl / xxl: cross-column count for each breakpoint, default 12

## init
```
public init(span!: Int32 = 1, offset!: Int32 = 0, order!: Int32 = 0, child!: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - span: cross-column count, default 1
  - offset: column offset, default 0
  - order: sort weight, default 0
  - child:child content builder function

```
public init(span!: GridColColumnOption, offset!: GridColColumnOption, order!: GridColColumnOption, child!: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - span: cross-column count for each breakpoint
  - offset: offset for each breakpoint
  - order: sort order for each breakpoint
  - child:child content builder function

## span
```
public func span(span: Int32): This
```

- description:Sets the column span (number of grid columns occupied) to `span`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func span(span: GridColColumnOption): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## offset
```
public func offset(offset: Int32): This
```

- description:Sets the column offset (number of empty columns to skip before this GridCol) to `offset`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func offset(offset: GridColColumnOption): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## gridColOffset
```
public func gridColOffset(offset: Int32): This
```

- description:Sets the grid column offset (column span or `GridColColumnOption`) to `offset`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func gridColOffset(offset: GridColColumnOption): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## order
```
public func order(order: Int32): This
```

- description:Sets the display order of this GridCol to `order`. Lower orders are laid out first. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func order(order: GridColColumnOption): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This
