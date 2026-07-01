# SymbolSpan

Symbol font span component, used as child content of Text to insert symbol font icons within a text line.

---

## init
```
public init(value: AppResource)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:symbol resource reference

## fontColor
```
public func fontColor(value: Array<Color>): This
```

- description:Sets the symbol span font color(s) to `value` (an `Array<Color>`, `Array<UInt32>` or `Array<AppResource>`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:colorarray
- return:This

```
public func fontColor(value: Array<UInt32>): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: color count value array
- return:This

```
public func fontColor(value: Array<AppResource>): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:colorresourcereferencearray
- return:This

## fontSize
```
public func fontSize(value: Length): This
```

- description:Sets the symbol span font size to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:font size
- return:This

## fontWeight
```
public func fontWeight(value: Int64): This
```

- description:Sets the symbol span font weight to `value` (`FontWeight` enum, numeric Int64, or string). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: font weight count value
- return:This

```
public func fontWeight(value: String): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:font weightstring
- return:This

```
public func fontWeight(value: FontWeight): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:font weight, FontWeight enum
- return:This

## renderingStrategy
```
public func renderingStrategy(value: SymbolRenderingStrategy): This
```

- description:Sets the symbol rendering strategy to `value` (`SymbolRenderingStrategy` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:rendering strategy, SymbolRenderingStrategy enum
- return:This

## effectStrategy
```
public func effectStrategy(value: SymbolEffectStrategy): This
```

- description:Sets the symbol effect strategy to `value` (`SymbolEffectStrategy` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:animation strategy, SymbolEffectStrategy enum
- return:This
