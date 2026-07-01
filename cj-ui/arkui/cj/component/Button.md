# Button

Button component, supports multiple types, styles, state effects and roles.

---

## ButtonOptions
```
public class ButtonOptions
```

Options bag used to construct a `Button` via `Button(options: ButtonOptions)`.

### Fields
- shape:ButtonType
- stateEffect:Bool
- buttonStyle:ButtonStyleMode
- controlSize:ControlSize
- role:ButtonRole

### API

#### init
```
public init(
    shape!: ButtonType = ButtonType.Capsule,
    stateEffect!: Bool = true,
    buttonStyle!: ButtonStyleMode = ButtonStyleMode.EMPHASIZED,
    controlSize!: ControlSize = ControlSize.NORMAL,
    role!: ButtonRole = ButtonRole.NORMAL
)
```

- description:Constructs a ButtonOptions. `shape` button shape (default `Capsule`), `stateEffect` whether to apply pressed state effect (default true), `buttonStyle` style mode (default `EMPHASIZED`), `controlSize` size level (default `NORMAL`), `role` semantic role (default `NORMAL`).

## Button (init)

`Button` provides several constructors:

### init
```
public init()
```

- description:Constructs a Button with no label/child.

### init
```
public init(content: () -> Unit)
```

- description:Constructs a Button with the given `content` builder as its child.

### init
```
public init(label: String)
```

- description:Constructs a Button with the given text `label`.

### init
```
public init(label: AppResource)
```

- description:Constructs a Button with a label resolved from the given `AppResource`.

### init
```
public init(options: ButtonOptions)
```

- description:Constructs a Button configured by the given `options`.
- APILevel:16 (per source)

## fontSize
```
public func fontSize(size: Length): This
```

- description:Sets the button label font size to `size` (Length type). Returns `This` for chaining.
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```

- description:Sets the button label font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- return:This

## fontColor
```
public func fontColor(color: ResourceColor): This
```

- description:Sets the button label font color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## fontStyle
```
public func fontStyle(style: FontStyle): This
```

- description:Sets the button label font style to `style` (`FontStyle` enum: `Normal`/`Italic`). Returns `This` for chaining.
- return:This

## fontFamily
```
public func fontFamily(content: String): This
```

- description:Sets the button label font family to `content` (font name string, e.g. `"HarmonyOS Sans"`). Returns `This` for chaining.
- return:This

```
public func fontFamily(content: AppResource): This
```

- description:Sets the button label font family to `content` (an `AppResource` reference). Returns `This` for chaining.
- return:This

## shape
```
public func shape(shapeType: ShapeType): This
```

- description:Sets the button shape to `shapeType` (a custom `ShapeType`). Returns `This` for chaining.
- return:This

```
public func shape(buttonType: ButtonType): This
```

- description:Sets the button shape to `buttonType` (a built-in `ButtonType`: `Circle`/`Capsule`/`Normal`). Returns `This` for chaining.
- return:This

## padding
```
public func padding(paddingValue: Length): This
```

- description:Sets the button's inner padding to `paddingValue`. Returns `This` for chaining.
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```

- description:Sets the button border corner radius to `radius` (Length type). Returns `This` for chaining.
- return:This

## stateEffect
```
public func stateEffect(value: Bool): This
```

- description:Sets whether the button applies a pressed-state visual effect. When `value` is `true` the press feedback is shown; when `false` it is not. Returns `This` for chaining.
- return:This

## role
```
public func role(value: ButtonRole): This
```

- description:Sets the button's semantic role to `value` (`ButtonRole` enum: `NORMAL`/`ERROR`). `ERROR` styles the button to signal a destructive action. Returns `This` for chaining.
- return:This

## controlSize
```
public func controlSize(value: ControlSize): This
```

- description:Sets the button size level to `value` (`ControlSize` enum: `SMALL`/`NORMAL`/`LARGE`). Returns `This` for chaining.
- return:This

## buttonStyle
```
public func buttonStyle(value: ButtonStyleMode): This
```

- description:Sets the button style mode to `value` (`ButtonStyleMode` enum). Returns `This` for chaining.
- return:This

## labelStyle
```
public func labelStyle(
    overflow!: TextOverflow = TextOverflow.Ellipsis,
    maxLines!: UInt32 = 1,
    minFontSize!: Option<Length> = None,
    maxFontSize!: Option<Length> = None,
    heightAdaptivePolicy!: TextHeightAdaptivePolicy = TextHeightAdaptivePolicy.MAX_LINES_FIRST,
    font!: Fonts = Fonts()
): This
```

- description:Sets the label text style. `overflow` overflow handling (default `Ellipsis`), `maxLines` maximum number of lines (default 1), `minFontSize`/`maxFontSize` optional adaptive font-size bounds (default None), `heightAdaptivePolicy` height adaptive strategy (default `MAX_LINES_FIRST`), `font` font configuration (default empty). Overloads accept `AppResource` for `minFontSize`/`maxFontSize`.
- return:This

## onClick
```
public func onClick(callback: () -> Unit): This
```

- description:Registers the click callback.
- return:This

## ButtonType
```
public enum ButtonType
```

- enum:
  - Normal: normal
  - Capsule: capsule
  - Circle: circle
  - ROUNDED_RECTANGLE: rounded rectangle

## ButtonRole
```
public enum ButtonRole
```

- enum:
  - NORMAL
  - ERROR

## ButtonStyleMode
```
public enum ButtonStyleMode
```

- enum:
  - NORMAL
  - EMPHASIZED
  - TEXTUAL
