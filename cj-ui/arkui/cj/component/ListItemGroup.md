# ListItemGroup

List item group container, serves as List child content, provides unified header/footer and spacing for a group of ListItems.

---

## ListItemGroupParams
```
public struct ListItemGroupParams
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(header!: () -> Unit = {=>}, footer!: () -> Unit = {=>}, space!: Length)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - header: header builder function, default empty
  - footer: footer builder function, default empty
  - space: child item spacing

### init

```
public init(header!: () -> Unit = {=>}, footer!: () -> Unit = {=>})
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - header:header builder function
  - footer:footer builder function

### init

```
public init(header!: () -> Unit = {=>}, footer!: () -> Unit = {=>}, space!: Length, style!: ListItemGroupStyle)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - header:header builder function
  - footer:footer builder function
  - space:child item spacing
  - style:groupstyle

## init
```
public init(value: ListItemGroupParams, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:groupparameter
  - child: child content builder function (a group of ListItems)

## divider
```
public func divider(options: DividerOptions): This
```

- description:Configures the divider between items in the group via `options` (`DividerOptions`: stroke width, color, start/end margins). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - options: divider option, DividerOptions
- return:This

## ListItemGroupStyle
```
public enum ListItemGroupStyle
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - NONE:no special style
  - CARD: card style
