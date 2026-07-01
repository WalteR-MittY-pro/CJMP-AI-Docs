# Badge

A badge container component that overlays a badge at the top-right/right/left-top corner of a child component, supporting both count and text modes.

---

## BadgeStyle
```
public struct BadgeStyle
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(color!: ResourceColor = Color.WHITE, fontSize!: Int64 = 10, badgeSize!: Int64 = 16, badgeColor!: ResourceColor = Color.RED, fontWeight!: FontWeight = FontWeight.Normal, borderColor!: ResourceColor = Color.RED, borderWidth!: Length = 1.vp)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - color: badge text color, default white
  - fontSize: text font size, default 10
  - badgeSize: badge size, default 16
  - badgeColor: badge background color, default red
  - fontWeight: text font weight, default Normal
  - borderColor: border color, default red
  - borderWidth: border width, default 1vp

## BadgeParams
```
public struct BadgeParams
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(count!: Int32, style!: BadgeStyle, position!: BadgePosition = BadgePosition.RightTop, maxCount!: Int32 = 99)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - count: count value
  - style: badge style
  - position: badge position，defaulttop-right
  - maxCount: max display count; exceeding values display as maxCount+, default 99

### init

```
public init(value!: String, style!: BadgeStyle, position!: BadgePosition = BadgePosition.RightTop)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - value:badgetext
  - style: badge style
  - position: badge position，defaulttop-right

## init
```
public init(value: BadgeParams, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:badgeparameter
  - child:child content builder function

## BadgePosition
```
public enum BadgePosition
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - RightTop:top-right
  - Right: right side
  - Left: left side
