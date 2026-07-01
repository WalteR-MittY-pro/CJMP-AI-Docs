# Progress

Progress bar component, supports linear, ring, eclipse, scale ring, capsule and other multiple styles.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## ProgressOptions
```
public struct ProgressOptions
```


### init

```
public init(value!: Float64, total!: Float64 = 100.0, progressType!: ProgressType = ProgressType.Linear)
```

- description:Constructs an instance with the given parameters.
- params:
  - value:current progress value
  - total: total amount，default 100.0
  - progressType:progresstype，default Linear；enum ProgressType

## ProgressStyleOptions
```
public struct ProgressStyleOptions
```


### init

```
public init(strokeWidth!: Length = 4.vp, scaleCount!: Int32 = 120, scaleWidth!: Length = 2.vp, enableSmoothEffect!: Bool = true)
```

- description:Constructs an instance with the given parameters.
- params:
  - strokeWidth: ring thickness，default 4vp
  - scaleCount: scale count，default 120
  - scaleWidth: scale width，default 2vp
  - enableSmoothEffect: whether to enable smooth effect, default true

## RingStyleOptions
```
public struct RingStyleOptions
```


### init

```
public init(strokeWidth!: Length = 4.vp, shadow!: Bool = false, status!: ProgressStatus = ProgressStatus.PROGRESSING, enableSmoothEffect!: Bool = true, enableScanEffect!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- params:
  - strokeWidth: ring thickness，default 4vp
  - shadow:whether to showshadow，default false
  - status:progressstate，default PROGRESSING；enum ProgressStatus
  - enableSmoothEffect:whether smooth, default true
  - enableScanEffect:whether scan animation, default false

## LinearStyleOptions
```
public struct LinearStyleOptions
```


### init

```
public init(strokeWidth!: Length = 4.vp, strokeRadius!: Length = 2.vp, enableSmoothEffect!: Bool = true, enableScanEffect!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- params:
  - strokeWidth:thickness，default 4vp
  - strokeRadius:corner radius，default 2vp
  - enableSmoothEffect:whether smooth, default true
  - enableScanEffect:whether scan animation, default false

### init

```
public init(strokeWidth!: Length = 4.vp, enableSmoothEffect!: Bool = true, enableScanEffect!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- params:
  - strokeWidth:thickness，default 4vp
  - enableSmoothEffect:whether smooth, default true
  - enableScanEffect:whether scan animation, default false

## CapsuleStyleOptions
```
public struct CapsuleStyleOptions
```


### init

```
public init(content!: String = "HarmonyOS Sans", font!: Fonts = Fonts(), borderWidth!: Length = 1.vp, borderColor!: ResourceColor = Color(0x33007dff), fontColor!: ResourceColor = Color(0xff182431), showDefaultPercentage!: Bool = false, enableSmoothEffect!: Bool = true, enableScanEffect!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- params:
  - content:font family, default HarmonyOS Sans
  - font:fontconfigure，Fonts
  - borderWidth:borderwidth，default 1vp
  - borderColor:bordercolor
  - fontColor:text color
  - showDefaultPercentage: whether to show percentage, default false
  - enableSmoothEffect:whether smooth, default true
  - enableScanEffect:whether scan animation, default false

## init
```
public init(option: ProgressOptions)
```

- description:Constructs an instance with the given parameters.
- params:
  - option:progressparameter，ProgressOptions

```
public init(value!: Float64, total!: Float64 = 100.0, `type`!: ProgressType = ProgressType.Linear)
```

- params:
  - value:current progress value
  - total: total amount，default 100.0
  - type:progresstype，default Linear；enum ProgressType

## value
```
public func value(baseValue: Float64): This
```

- description:Sets the current progress value to `baseValue`. The value is clamped to `[0, total]` (where `total` defaults to `100.0`). Returns `This` for chaining.
- params:
  - baseValue: progress value
- return:This

## color
```
public func color(baseColor: ResourceColor): This
```

- description:Sets the progress foreground color to `baseColor` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - baseColor:color
- return:This

```
public func color(value: Array<ColorStop>): This
```

- params:
  - value: color stop array, ColorStop
- return:This

## backgroundColor
```
public func backgroundColor(color: ResourceColor): This
```

- description:Sets the progress track background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color:background color
- return:This

## style
```
public func style(strokeWidth!: Length = 10.vp, scaleCount!: Int32 = 120, scaleWidth!: Length = 2.vp): This
```

- description:Configures the ring/scale-ring style: `strokeWidth` ring thickness (default `10vp`), `scaleCount` number of scale ticks (default `120`), `scaleWidth` width of each tick (default `2vp`). Returns `This` for chaining.
- params:
  - strokeWidth: ring thickness，default 10vp
  - scaleCount: scale count，default 120
  - scaleWidth: scale width，default 2vp
- return:This

```
public func style(ringStyle: RingStyleOptions): This
```

- params:
  - ringStyle: ring style option
- return:This

```
public func style(eclipseStyle: EclipseStyleOptions): This
```

- params:
  - eclipseStyle: eclipse style option, EclipseStyleOptions (including enableSmoothEffect)
- return:This

```
public func style(scaleRingStyle: ScaleRingStyleOptions): This
```

- params:
  - scaleRingStyle: scale ring style option
- return:This

```
public func style(progressStyle: ProgressStyleOptions): This
```

- params:
  - progressStyle:styleoption
- return:This

```
public func style(linearStyle: LinearStyleOptions): This
```

- params:
  - linearStyle:linearstyleoption
- return:This

```
public func style(capsuleStyle: CapsuleStyleOptions): This
```

- params:
  - capsuleStyle: capsule style option
- return:This

## ProgressStyle
```
public enum ProgressStyle
```

- enum:
  - Linear:linear
  - Ring: ring
  - Eclipse: eclipse
  - ScaleRing: scale ring
  - Capsule: capsule

## ProgressStatus
```
public enum ProgressStatus
```

- enum:
  - LOADING: loading
  - PROGRESSING: in progress
