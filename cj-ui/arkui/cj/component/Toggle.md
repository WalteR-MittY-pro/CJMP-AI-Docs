# Toggle

Toggle component, supports Toggle / Button / Checkbox three child types, used to switch between two states.

---

## init
```
public init(toggleType: ToggleType, isOn!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - toggleType:toggle child type, ToggleType enum
  - isOn:whether initially on, default false

```
public init(toggleType: ToggleType, isOn: Bool, subcomponent: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - toggleType:toggle child type
  - isOn:whether initially on
  - subcomponent:child content builder function

## width
```
public func width(width: Length): This
```

- description:Sets the toggle's overall width to `width`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the toggle's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the toggle's overall `width` and `height`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height
- return:This

## selectedColor
```
public func selectedColor(color: ResourceColor): This
```

- description:Sets the toggle on-state color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:on-state color
- return:This

## switchPointColor
```
public func switchPointColor(color: ResourceColor): This
```

- description:Sets the switch toggle thumb (point) color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:slider block color
- return:This

## responseRegion
```
public func responseRegion(rect: Rectangle): This
```

- description:Sets the hit-test response region to `rect` (a `Rectangle`), overriding the default toggle-bounding-box hit area. Returns `This` for chaining.
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

## onChange
```
public func onChange(callback: (Bool) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Bool:whether on
- return:This

## switchStyle
```
public func switchStyle(pointRadius!: Float64, unselectedColor!: ResourceColor, pointColor!: ResourceColor, trackBorderRadius!: Float64): This
```

- description:Sets the switch-style toggle visual style: `pointRadius` (slider block radius), `unselectedColor` (track color when off), `pointColor` (slider block color) and `trackBorderRadius` (track corner radius). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - pointRadius:slider block radius
  - unselectedColor:track color when unselected
  - pointColor:slider block color
  - trackBorderRadius:track corner radius
- return:This

## backgroundColor
```
public func backgroundColor(color: ResourceColor): This
```

- description:Sets the toggle background color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:background color
- return:This

## hoverEffect
```
public func hoverEffect(value: HoverEffect): This
```

- description:Sets the toggle hover visual effect to `value` (`HoverEffect` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:hover effect, HoverEffect enum
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```

- description:Sets the toggle border corner radius to `radius` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - radius:corner radius
- return:This
