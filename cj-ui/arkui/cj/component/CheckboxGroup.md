# CheckboxGroup

Checkbox group container, unified management of selected state for multiple Checkboxes in the same group.

---

## CheckboxGroupResult
```
public struct CheckboxGroupResult
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public CheckboxGroupResult(public var status: SelectStatus, public var name: ArrayList<String>)
```

- APILevel:16
- params:
  - status: selected state, SelectStatus enum
  - name: selected item name list

## init
```
public init(group!: String = "")
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - group: group name, default empty

## selectAll
```
public func selectAll(value: Bool): This
```

- description:Sets whether all checkboxes in the group are selected. When `value` is `true` all are selected; when `false` all are cleared. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: whether to select all
- return:This

## selectedColor
```
public func selectedColor(color: ResourceColor): This
```

- description:Sets the group selected-state color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:selected color
- return:This

## width
```
public func width(value: Length): This
```

- description:Sets the checkbox group's overall width to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the checkbox group's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the checkbox group's overall `width` and `height`. Returns `This` for chaining.
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

- description:Sets the inner padding around the checkbox group to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:padding
- return:This

## responseRegion
```
public func responseRegion(rect: Rectangle): This
```

- description:Sets the hit-test response region to `rect` (a `Rectangle`), overriding the default group-bounding-box hit area. Returns `This` for chaining.
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
public func onChange(callback: (CheckboxGroupResult) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - CheckboxGroupResult: selected result (includes state and name list)
- return:This

## unselectedColor
```
public func unselectedColor(value: ResourceColor): This
```

- description:Sets the group unselected-state color (border color) to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: unselected border color
- return:This

## mark
```
public func mark(strokeColor!: ResourceColor = Color.WHITE, size!: Length = 0.vp, strokeWidth!: Length = 2.vp): This
```

- description:Configures the checkmark style: `strokeColor` (default `Color.WHITE`), `size` (default `0vp`, falls back to the checkbox's default size when 0) and `strokeWidth` (default `2vp`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - strokeColor: marker stroke color，defaultwhite
  - size: marker size, default 0vp
  - strokeWidth: stroke width，default 2vp
- return:This

## checkboxShape
```
public func checkboxShape(value: CheckBoxShape): This
```

- description:Sets the checkbox outline shape to `value` (`CheckBoxShape` enum: e.g. `Circle`/`RoundedSquare`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:shape, CheckBoxShape enum
- return:This
