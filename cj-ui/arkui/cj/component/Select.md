# Select

Drop-down select component; clicking expands an option column for the user to select from.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## SelectOption
```
public class SelectOption
```


### init

```
public init(value: String, icon!: String)
```

- description:Constructs an instance with the given parameters.
- params:
  - value: option value text
  - icon:optionicon

> Also has `value: AppResource` and `icon: AppResource` resource overload constructors, identical behavior.

## MenuOffset
```
public struct MenuOffset
```


### init

```
public init(dx: Length, dy: Length)
```

- description:Constructs an instance with the given parameters.
- params:
  - dx: X-axis offset
  - dy: Y-axis offset

## DividerOptions
```
public struct DividerOptions
```


### init

```
public init(strokeWidth!: Length, startMargin!: Length, endMargin!: Length, color!: ResourceColor)
```

- description:Constructs an instance with the given parameters.
- params:
  - strokeWidth:dividerthickness
  - startMargin: start margin
  - endMargin: end margin
  - color:dividercolor

## init
```
public init(values: Array<SelectOption>)
```

- description:Constructs an instance with the given parameters.
- params:
  - values:optionarray

## selected
```
public func selected(value: Int32): This
```

- description:Sets the index of the currently selected option to `value` (`-1` for no selection). Returns `This` for chaining.
- params:
  - value:selected index
- return:This

## value
```
public func value(content: String): This
```

- description:Sets the text displayed in the trigger button to `content` (string overload). Returns `This` for chaining.
- params:
  - content:display text
- return:This

```
public func value(content: AppResource): This
```

- params:
  - content:display text resource reference
- return:This

## controlSize
```
public func controlSize(value: ControlSize): This
```

- description:Sets the trigger-button size level to `value` (`ControlSize` enum: `SMALL`/`NORMAL`/`LARGE`). Returns `This` for chaining.
- params:
  - value: size level, ControlSize enum
- return:This

## divider
```
public func divider(options!: Option<DividerOptions> = Option.None): This
```

- description:Configures the divider between options via `options` (`DividerOptions`); pass `None` (default) to hide dividers. Returns `This` for chaining.
- params:
  - options:divideroption，default None
- return:This

## font
```
public func font(style!: FontStyle = FontStyle.Normal, weight!: FontWeight = FontWeight.Medium, size!: Length = 16.vp, family!: String = "sans-serif"): This
```

- description:Sets the trigger-button font: `style` (default `Normal`), `weight` (default `Medium`), `size` (default `16vp`) and `family` (default `sans-serif`). Returns `This` for chaining.
- params:
  - style:font style, default Normal
  - weight:font weight，default Medium
  - size:font size，default 16vp
  - family:font family，default sans-serif
- return:This

## fontColor
```
public func fontColor(value: ResourceColor): This
```

- description:Sets the trigger-button text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:textcolor
- return:This

## selectedOptionBgColor
```
public func selectedOptionBgColor(value: ResourceColor): This
```

- description:Sets the background color of the selected dropdown option to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:background color
- return:This

## selectedOptionFont
```
public func selectedOptionFont(style!: FontStyle = FontStyle.Normal, weight!: FontWeight = FontWeight.Medium, size!: Length = 16.vp, family!: String = "sans-serif"): This
```

- description:Sets the font of the selected dropdown option: `style` (default `Normal`), `weight` (default `Medium`), `size` (default `16.vp`) and `family` (default `"sans-serif"`). Returns `This` for chaining.
- params:
  - style:font style
  - weight:font weight
  - size:font size
  - family:font family
- return:This

## selectedOptionFontColor
```
public func selectedOptionFontColor(value: ResourceColor): This
```

- description:Sets the text color of the selected dropdown option to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:text color
- return:This

## optionBgColor
```
public func optionBgColor(value: ResourceColor): This
```

- description:Sets the background color of dropdown options to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:background color
- return:This

## optionFont
```
public func optionFont(style!: FontStyle = FontStyle.Normal, weight!: FontWeight = FontWeight.Medium, size!: Length = 16.vp, family!: String = "sans-serif"): This
```

- description:Sets the dropdown option font: `style` (default `Normal`), `weight` (default `Medium`), `size` (default `16.vp`) and `family` (default `"sans-serif"`). Returns `This` for chaining.
- params:
  - style:font style
  - weight:font weight
  - size:font size
  - family:font family
- return:This

## optionFontColor
```
public func optionFontColor(value: ResourceColor): This
```

- description:Sets the text color of dropdown options to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:text color
- return:This

## space
```
public func space(value: Length): This
```

- description:Sets the spacing between the trigger button's text and the dropdown arrow to `value`. Returns `This` for chaining.
- params:
  - value:spacing
- return:This

## arrowPosition
```
public func arrowPosition(value: ArrowPosition): This
```

- description:Sets the dropdown arrow position to `value` (`ArrowPosition` enum). Returns `This` for chaining.
- params:
  - value: arrow position, ArrowPosition enum
- return:This

## menuAlign
```
public func menuAlign(alignType: MenuAlignType, offset!: MenuOffset): This
```

- description:Sets the dropdown menu alignment to `alignType` (`MenuAlignType` enum) with `offset` (`MenuOffset`). Returns `This` for chaining.
- params:
  - alignType: alignment type, MenuAlignType enum
  - offset: offset amount, MenuOffset
- return:This

## optionWidth
```
public func optionWidth(value: OptionWidthMode): This
```

- description:Sets the dropdown option width to `value` (either a `OptionWidthMode` enum or a `Length`). Returns `This` for chaining.
- params:
  - value:widthmode，OptionWidthMode enum
- return:This

```
public func optionWidth(value: Length): This
```

- params:
  - value:width
- return:This

## optionHeight
```
public func optionHeight(value: Length): This
```

- description:Sets the dropdown option height to `value` (Length type). Returns `This` for chaining.
- params:
  - value:height
- return:This

## menuBackgroundColor
```
public func menuBackgroundColor(value: ResourceColor): This
```

- description:Sets the dropdown menu background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:background color
- return:This

## menuBackgroundBlurStyle
```
public func menuBackgroundBlurStyle(value: BlurStyle): This
```

- description:Sets the dropdown menu background blur style to `value` (`BlurStyle` enum). Returns `This` for chaining.
- params:
  - value:blur style, BlurStyle enum
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the trigger button's overall `width` and `height`. Returns `This` for chaining.
- params:
  - width:width
  - height:height
- return:This

## padding
```
public func padding(value: Length): This
```

- description:Sets the trigger button's inner padding to `value`. Returns `This` for chaining.
- params:
  - value:padding
- return:This

## direction
```
public func direction(value: Direction): This
```

- description:Sets the layout direction (`Direction` enum: `Ltr`/`Rtl`/`Auto`) used by the trigger button's content. Returns `This` for chaining.
- params:
  - value: direction, Direction enum
- return:This

## backgroundColor
```
public func backgroundColor(color: ResourceColor): This
```

- description:Sets the trigger-button background color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color:background color
- return:This

## onSelect
```
public func onSelect(callback: (Int32, String) -> Unit): This
```

- description:Registers the select callback.
- params:
  - callback:callback function
  - Int32:selecteditemindex
  - String:selecteditemtext
- return:This
