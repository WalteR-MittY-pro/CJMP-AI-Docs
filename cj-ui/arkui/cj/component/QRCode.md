# QRCode

QR code component, renders the given string as a QR code pattern.

---

## init
```
public init(value: String)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: the string to encode

## color
```
public func color(baseColor: ResourceColor): This
```

- description:Sets the QR code module color to `baseColor` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - baseColor: QR code color
- return:This

## backgroundColor
```
public func backgroundColor(color: ResourceColor): This
```

- description:Sets the QR code background color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:background color
- return:This

## contentOpacity
```
public func contentOpacity(value: Float64): This
```

- description:Sets the QR code content (foreground) opacity to `value` (Float64, range `0.0`-`1.0`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:opacity
- return:This

```
public func contentOpacity(value: Int64): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:opacity
- return:This

```
public func contentOpacity(value: AppResource): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:resourcereference
- return:This
