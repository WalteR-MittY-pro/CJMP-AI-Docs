# Span

Text span component, used as child content of Text, for setting styles on partial text independently.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## TextBackgroundStyle
```
public struct TextBackgroundStyle
```


### init

```
public init(color!: ResourceColor = Color.TRANSPARENT, radiusBorder!: BorderRadiuses = BorderRadiuses(), radiusDimension!: Length = 0.0)
```

- description:Constructs an instance with the given parameters.
- params:
  - color:background color, default transparent
  - radiusBorder: corner radius (set each corner separately)
  - radiusDimension: uniform corner radius, default 0.0

## init
```
public init(content: String)
```

- description:Constructs an instance with the given parameters.
- params:
  - content: span text

```
public init(content: AppResource)
```

- params:
  - content: span text resource reference

## font
```
public func font(size!: Length, weight!: FontWeight, family!: String, style!: FontStyle): This
```

- description:Sets the Span's font: `size` (font size), `weight` (font weight), `family` (font family) and `style` (font style). Returns `This` for chaining.
- params:
  - size:font size
  - weight:font weight
  - family:font family
  - style:font style
- return:This

## fontSize
```
public func fontSize(value: Length): This
```

- description:Sets the span text font size to `value` (Length type). Returns `This` for chaining.
- params:
  - value:font size
- return:This

## fontColor
```
public func fontColor(value: ResourceColor): This
```

- description:Sets the span text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:text color
- return:This

## fontStyle
```
public func fontStyle(value: FontStyle): This
```

- description:Sets the span text font style to `value` (`FontStyle` enum: `Normal`/`Italic`). Returns `This` for chaining.
- params:
  - value:font style，FontStyle enum
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```

- description:Sets the span text font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- params:
  - value:font weight, FontWeight enum
- return:This

## fontFamily
```
public func fontFamily(value: String): This
```

- description:Sets the span text font family to `value` (font name string). Returns `This` for chaining.
- params:
  - value:font family name
- return:This

```
public func fontFamily(content: AppResource): This
```

- params:
  - content:font family resource reference
- return:This

## decoration
```
public func decoration(decorationType!: TextDecorationType, color!: ResourceColor = Color.BLACK): This
```

- description:Sets the text decoration: `decorationType` (e.g. `Underline`/`LineThrough`/`None`) and `color` (decoration line color, default `Color.BLACK`). Returns `This` for chaining.
- params:
  - decorationType:decorationtype，TextDecorationType enum
  - color:decorationlinecolor，defaultblack
- return:This

## letterSpacing
```
public func letterSpacing(value: Length): This
```

- description:Sets the inter-character spacing to `value` (Length type). Returns `This` for chaining.
- params:
  - value:character spacing
- return:This

## textCase
```
public func textCase(value: TextCase): This
```

- description:Sets the letter-case transformation to `value` (`TextCase` enum: `LowerCase`/`UpperCase`/`TitleCase`). Returns `This` for chaining.
- params:
  - value:letter case mode, TextCase enum
- return:This

## lineHeight
```
public func lineHeight(value: Length): This
```

- description:Sets the span text line height to `value` (Length type). Returns `This` for chaining.
- params:
  - value:line height
- return:This

## baselineOffset
```
public func baselineOffset(value: Length): This
```

- description:Sets the span text baseline offset to `value` (Length type). Returns `This` for chaining.
- params:
  - value:baseline offset
- return:This

## textShadow
```
public func textShadow(radius!: Float64, shadowType!: ShadowType = ShadowType.COLOR, offsetX!: Float64 = 0.0, offsetY!: Float64 = 0.0, color!: ResourceColor = Color.BLACK, fill!: Bool = false): This
```

- description:Sets the span text shadow: `radius` (blur radius), `shadowType` (default `COLOR`), `offsetX`/`offsetY` (default `0.0`), `color` (default `Color.BLACK`), `fill` (default `false`). Returns `This` for chaining.
- params:
  - radius:blur radius
  - shadowType:shadowtype，default COLOR
  - offsetX: X axis offset，default 0.0
  - offsetY: Y axis offset，default 0.0
  - color:shadow color，defaultblack
  - fill:whether to fill, default false
- return:This

```
public func textShadow(values: Array<ShadowOptions>): This
```

- params:
  - values:shadowoptionarray，ShadowOptions
- return:This

## textBackgroundStyle
```
public func textBackgroundStyle(textBackgroundStyle: TextBackgroundStyle): This
```

- description:Sets the span text background style to `textBackgroundStyle` (a `TextBackgroundStyle`). Returns `This` for chaining.
- params:
  - textBackgroundStyle: background style
- return:This

## onClick
```
public func onClick(callback: (ClickEvent) -> Unit): This
```

- description:Registers the click callback.
- params:
  - callback:callback function
  - ClickEvent:clickevent
- return:This
