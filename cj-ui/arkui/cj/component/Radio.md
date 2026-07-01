# Radio

Radio component, must belong to a radio group, only one can be selected at a time within the group.

---

## init
```
public init(value!: String, group!: String, indicatorType!: RadioIndicatorType = RadioIndicatorType.TICK, indicatorBuilder!: Option<() -> Unit> = Option.None)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: this item's marker value
  - group: the radio group name
  - indicatorType:selectedindicatortype，default TICK
  - indicatorBuilder: custom builder when indicatorType is CUSTOM, default None

## checked
```
public func checked(value: Bool): This
```

- description:Sets whether this radio item is checked. When `value` is `true` the radio shows its selected indicator; sibling radios in the same group are unchecked by the framework. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether selected
- return:This

## radioStyle
```
public func radioStyle(checkedBackgroundColor!: ResourceColor = Color(0x007DFF), uncheckedBorderColor!: ResourceColor = Color(0x182431), indicatorColor!: ResourceColor = Color.WHITE): This
```

- description:Sets the radio visual style: `checkedBackgroundColor` (default `Color(0x007DFF)`), `uncheckedBorderColor` (default `Color(0x182431)`) and `indicatorColor` (default `Color.WHITE`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - checkedBackgroundColor: background color when selected, default blue
  - uncheckedBorderColor: border color when not selected, default dark gray
  - indicatorColor:indicatorcolor，defaultwhite
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the radio's overall `width` and `height`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height
- return:This

## padding
```
public func padding(value: Length): This
```

- description:Sets the inner padding around the radio indicator to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:padding
- return:This

## hoverEffect
```
public func hoverEffect(value: HoverEffect): This
```

- description:Sets the hover visual effect to `value` (`HoverEffect` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:hover effect, HoverEffect enum
- return:This

## onChange
```
public func onChange(callback: (Bool) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Bool: whether selected
- return:This

## responseRegion
```
public func responseRegion(rect: Rectangle): This
```

- description:Sets the hit-test response region to `rect` (a `Rectangle`), overriding the default radio-bounding-box hit area. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - rect:response area rectangle
- return:This

## responseRegionArray
```
public func responseRegionArray(array: Array<Rectangle>): This
```

- description:Sets the hit-test response region to the union of `array` (`Array<Rectangle>`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - array:response area rectangle array
- return:This

## RadioIndicatorType
```
public enum RadioIndicatorType
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - TICK: tick style
  - DOT: dot style
  - CUSTOM: custom style (built via indicatorBuilder)
