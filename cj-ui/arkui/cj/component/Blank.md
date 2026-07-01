# Blank

blank placeholder component，stretches to fill remaining space in parent container's main axis direction，can fill color。

---

## init
```
public init(min!: Length = 0.vp)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - min: minimum placeholder size, default 0vp

## color
```
public func color(color: ResourceColor): This
```

- description:Sets the blank placeholder's background color to `color` (a `Color` enum value, a numeric color, or an `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color: background color, can be a Color enum value, a numeric value, or a Resource reference
- return:This
