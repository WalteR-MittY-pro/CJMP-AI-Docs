# DataPanel

data proportion chart component, displays multi-segment data proportions in ring or line bar form.

---

## ColorStop
```
public struct ColorStop
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(color: ResourceColor, offset: Length)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - color: breakpoint color
  - offset: breakpoint position offset

## LinearGradient
```
public class LinearGradient
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(colorStops: Array<ColorStop>)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - colorStops: color breakpoint array

### init

```
public init(color: ResourceColor)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - color: solid color

## DataPanelShadowOptions
```
public struct DataPanelShadowOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(radius!: Length, colors!: Array<LinearGradient>, offsetX!: Length, offsetY!: Length)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - radius:shadowblur radius
  - colors: shadow gradient color array
  - offsetX: X axis offset
  - offsetY: Y axis offset

## init
```
public init(values!: Array<Float64>, max!: Float64 = 100.0, panelType!: DataPanelType = DataPanelType.CircleType)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - values: data value array
  - max: data max value, default 100.0
  - panelType: chart type (CircleType ring / LineType line), default ring; enum DataPanelType

## closeEffect
```
public func closeEffect(value: Bool): This
```

- description:Sets whether the data panel close effect is disabled. When `value` is `true` the effect is closed; when `false` it is shown. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: whether to close
- return:This

## valueColors
```
public func valueColors(values: Array<LinearGradient>): This
```

- description:Sets the per-segment value colors to `values` (an `Array<LinearGradient>`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - values: gradient color array
- return:This

## trackBackgroundColor
```
public func trackBackgroundColor(color: ResourceColor): This
```

- description:Sets the data panel track background color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color: track background color
- return:This

## strokeWidth
```
public func strokeWidth(value: Length): This
```

- description:Sets the data panel ring stroke width to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:thickness, Length type
- return:This

## trackShadow
```
public func trackShadow(value: DataPanelShadowOptions): This
```

- description:Sets the track shadow to `value` (`DataPanelShadowOptions`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:shadowoption，DataPanelShadowOptions
- return:This
