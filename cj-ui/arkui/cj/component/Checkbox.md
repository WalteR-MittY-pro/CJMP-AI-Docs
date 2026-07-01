# Checkbox

Checkbox component, can be used standalone or belong to a CheckboxGroup.

---

## CheckBoxConfiguration
```
public struct CheckBoxConfiguration
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public CheckBoxConfiguration(public var name!: String, public var selected!: Bool, public var triggerChange!: (Bool) -> Unit)
```

- APILevel:16
- params:
  - name:checkboxname
  - selected:whether selected
  - triggerChange: callback to trigger selected change

## init
```
public init(name!: String = "", group!: String = "", indicatorBuilder!: ?() -> Unit = None)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - name: checkbox name, default empty
  - group: group name, default empty
  - indicatorBuilder: custom selected indicator builder function, default None

## select
```
public func select(value: Bool): This
```

- description:Sets whether this checkbox is checked. When `value` is `true` the checkbox shows its selected indicator. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether selected
- return:This

## selectedColor
```
public func selectedColor(color: ResourceColor): This
```

- description:Sets the checkbox checked-state color (indicator color) to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:selected color
- return:This

## width
```
public func width(value: Length): This
```

- description:Sets the checkbox's overall width to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the checkbox's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the checkbox's overall `width` and `height`. Returns `This` for chaining.
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

- description:Sets the inner padding around the checkbox indicator to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:padding
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
  - Bool:whether selected
- return:This

## shape
```
public func shape(value: CheckBoxShape): This
```

- description:Sets the checkbox's outline shape to `value` (`CheckBoxShape` enum: e.g. `Circle`/`RoundedSquare`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:shape, CheckBoxShape enum
- return:This

## responseRegion
```
public func responseRegion(rect: Rectangle): This
```

- description:Sets the hit-test response region to `rect` (a `Rectangle`), overriding the default checkbox-bounding-box hit area. Returns `This` for chaining.
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

## unselectedColor
```
public func unselectedColor(color: ResourceColor): This
```

- description:Sets the checkbox unchecked-state color (border color) to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color: unselected border color
- return:This

## mark
```
public func mark(strokeColor!: ResourceColor = Color.WHITE, size!: ?Length = None, strokeWidth!: Length = 2.vp): This
```

- description:Configures the checkmark style: `strokeColor` (default `Color.WHITE`), `size` (default `None`, falls back to the checkbox's default size) and `strokeWidth` (default `2vp`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - strokeColor: marker stroke color，defaultwhite
  - size: marker size, default None
  - strokeWidth: stroke width，default 2vp
- return:This
