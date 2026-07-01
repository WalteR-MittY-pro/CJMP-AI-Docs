# Gauge

A gauge (ring progress) component that displays the ratio of a data value to a range as a ring.

> Note: In source, this component uses `/** @since 11 */` documentation comments rather than `@APILevel` blocks, so sections below are annotated with APILevel:11 and have no syscap row.

---

## init
```
public init(value!: Float64, min!: Float64 = 0.0, max!: Float64 = 100.0)
```

- description:Constructs an instance with the given parameters.
- APILevel:11
- params:
  - value:current data value
  - min: range lower bound，default 0.0
  - max: range upper bound，default 100.0

```
public init(value!: Int64, min!: Int64 = 0, max!: Int64 = 100)
```

- APILevel:11
- params:
  - value:current data value
  - min: range lower bound，default 0
  - max: range upper bound，default 100

```
public init(value!: Float64, min!: Float64 = 0.0, max!: Float64 = 100.0, child!: () -> Unit)
```

- APILevel:11
- params:
  - value:current data value
  - min: range lower bound，default 0.0
  - max: range upper bound，default 100.0
  - child:child content builder function

```
public init(value!: Int64, min!: Int64 = 0, max!: Int64 = 100, child!: () -> Unit)
```

- APILevel:11
- params:
  - value:current data value
  - min: range lower bound，default 0
  - max: range upper bound，default 100
  - child:child content builder function

## value
```
public func value(gaugeValue: Float64): This
```

- description:Sets the gauge's current value to `gaugeValue`. The value is clamped to `[min, max]`. Returns `This` for chaining.
- APILevel:11
- params:
  - gaugeValue: current value
- return:This

```
public func value(gaugeValue: Int64): This
```

- APILevel:11
- params:
  - gaugeValue: current value
- return:This

## startAngle
```
public func startAngle(value: Float64): This
```

- description:Sets the gauge start angle to `value` (Float64, in degrees). Returns `This` for chaining.
- APILevel:11
- params:
  - value:start angle
- return:This

```
public func startAngle(value: Int64): This
```

- APILevel:11
- params:
  - value:start angle
- return:This

## endAngle
```
public func endAngle(value: Float64): This
```

- description:Sets the gauge end angle to `value` (Float64, in degrees). Returns `This` for chaining.
- APILevel:11
- params:
  - value:end angle
- return:This

```
public func endAngle(value: Int64): This
```

- APILevel:11
- params:
  - value:end angle
- return:This

## colors
```
public func colors(colorStop: Array<(Color, Float32)>): This
```

- description:Sets the gauge's color-segment configuration from the `colorStop` array of `(`Color`, weight)` tuples. Returns `This` for chaining.
- APILevel:11
- params:
  - colorStop: color and weight array; negative weights are set to 0
- return:This

> Overload variants (identical behavior, only color/weight types differ):
> - `colors(gradientColorStops: Array<(LinearGradient, Float32)>)` — linear gradient colors, up to 9 groups
> - `colors(Array<(LinearGradient, UInt32)>)` / `Array<(Color, Int32)>` / `Array<(UInt32, Float32)>` / `Array<(UInt32, Int32)>` / `Array<(AppResource, Float32)>` / `Array<(AppResource, Int32)>` — various type tuple combinations
> - Single-group overload: `colors(color: Color, offset: Float32)` and `AppResource`/`UInt32`/`Int32` color variants and `Int32` weight variants

## strokeWidth
```
public func strokeWidth(value: Length): This
```

- description:Sets the gauge ring stroke width to `value` (Length type). Returns `This` for chaining.
- APILevel:11
- params:
  - value:thickness, Length type
- return:This

## trackShadow
```
public func trackShadow(radius!: Float64 = 20.0, offsetX!: Float64 = 5.0, offsetY!: Float64 = 5.0): This
```

- description:Sets the gauge track shadow: `radius` (blur radius, default `20.0`), `offsetX` (default `5.0`) and `offsetY` (default `5.0`). Returns `This` for chaining.
- APILevel:11
- params:
  - radius:shadowblur radius，default 20.0
  - offsetX: X axis offset，default 5.0
  - offsetY: Y axis offset，default 5.0
- return:This

## indicator
```
public func indicator(icon!: String = "default", space!: Float64 = 8.0): This
```

- description:Configures the gauge pointer: `icon` (pointer icon path, default `"default"` for the built-in pointer) and `space` (gap between the pointer and the outer ring edge, default `8.0`). Returns `This` for chaining.
- APILevel:11
- params:
  - icon: pointer icon，default "default"
  - space: distance from pointer to outer ring edge, default 8.0
- return:This

```
public func indicator(icon!: String = "default", space!: UInt64): This
```

- APILevel:11
- params:
  - icon: pointer icon，default "default"
  - space: distance from pointer to outer ring edge
- return:This

## description
```
public func description(builder: () -> Unit): This
```

- description:Sets the gauge's description content, built by the `builder` closure, displayed below the gauge. Returns `This` for chaining.
- APILevel:11
- params:
  - builder: description content builder function
- return:This

## privacySensitive
```
public func privacySensitive(isPrivacySensitiveMode: Option<Bool>): This
```

- description:Marks the gauge content as privacy-sensitive. `Some(true)` marks sensitive, `Some(false)` cancels, `None` is the same as `Some(false)`. Returns `This` for chaining.
- APILevel:14
- params:
  - isPrivacySensitiveMode: Some(true) marks privacy-sensitive, Some(false) cancels, None same as false
- return:This
