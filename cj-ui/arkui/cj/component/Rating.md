# Rating

Rating component, displays rating with star icons, supports user interactive scoring.

---

## init
```
public init(rating!: Float64, indicator!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - rating: current rating
  - indicator: whether it serves only as an indicator (non-interactive), default false

```
public init(rating!: Int64, indicator!: Bool = false)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - rating: current rating
  - indicator: whether it serves only as an indicator, default false

## stars
```
public func stars(value: Int32): This
```

- description:Sets the total number of stars to `value`. Must be a positive integer; the rating clamps to `[0, value]`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: star count
- return:This

## stepSize
```
public func stepSize(value: Float64): This
```

- description:Sets the rating step size to `value` (Float64, fractional stars per step). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:step size
- return:This

```
public func stepSize(value: Int64): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:step size
- return:This

## starStyle
```
public func starStyle(backgroundUri!: String, foregroundUri!: String, secondaryUri!: String = backgroundUri): This
```

- description:Sets the rating star icons: `backgroundUri` (empty star icon path), `foregroundUri` (filled star icon path) and `secondaryUri` (half-filled star icon path, defaults to `backgroundUri`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - backgroundUri: background icon resource path
  - foregroundUri: foreground icon resource path
  - secondaryUri: secondary icon resource path, defaults to backgroundUri when omitted
- return:This

## onChange
```
public func onChange(callback: (Float64) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Float64: current rating value
- return:This

```
public func onChange(callback: () -> Unit): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This
