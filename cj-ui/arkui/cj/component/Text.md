# Text

Text component, displays text, supports rich styles including font, alignment, line height, shadow, decoration, data recognition, etc.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## TextFont
```
public class TextFont
```


### init

```
public init(size!: Length = 16.fp, weight!: FontWeight = FontWeight.Normal, family!: String = "", style!: FontStyle = FontStyle.Normal)
```

- description:Constructs an instance with the given parameters.
- params:
  - size:font size，default 16fp
  - weight:font weight, default Normal
  - family: font family, default empty
  - style:font style, default Normal

### init

```
public init(size!: Length = 16.fp, weight!: FontWeight = FontWeight.Normal, family!: AppResource, style!: FontStyle = FontStyle.Normal)
```

- description:Constructs an instance with the given parameters.
- params:
  - size:font size
  - weight:font weight
  - family:font family resource reference
  - style:font style

## ShadowOptions
```
public class ShadowOptions
```


### init

```
public init(radius!: Float64, shadowType!: ShadowType = ShadowType.COLOR, color!: ResourceColor = Color.BLACK, offsetX!: Float64 = 0.0, offsetY!: Float64 = 0.0, fill!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- params:
  - radius:blur radius
  - shadowType:shadowtype，default COLOR
  - color: shadow color, default black
  - offsetX: X axis offset，default 0.0
  - offsetY: Y axis offset，default 0.0
  - fill:whether to fill, default false

## TextMenuItemId
```
public struct TextMenuItemId
```


### Static Properties

- `CUT`:cut
- `COPY`:copy
- `PASTE`:paste
- `SELECT_ALL`:select all
  - `COLLABORATION_SERVICE`: collaboration service
  - `CAMERA_INPUT`: camera input
  - `AI_WRITER`: AI writer

### of

```
public static func of(id: String): TextMenuItemId
```

- description:Returns the `TextMenuItemId` corresponding to the given `id` string.
### of

```
public static func of(id: AppResource): TextMenuItemId
```

- description:Returns the `TextMenuItemId` resolved from the given `AppResource` `id`.
## TextMenuItem
```
public struct TextMenuItem
```


### init

```
public init(content!: String, icon!: String = '', id!: TextMenuItemId)
```

- description:Constructs an instance with the given parameters.
- params:
  - content: menu item text
  - icon:menuitemicon，defaultempty
  - id:menuitemmark

> Also has `content: AppResource`, `icon: AppResource` resource overload constructors, identical behavior.

## TextController
```
public class TextController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### closeSelectionMenu

```
public func closeSelectionMenu()
```

- description:Closes the text-selection menu currently displayed for this Text.
## init
```
public init(content: String, controller!: TextController = TextController())
```

- description:Constructs an instance with the given parameters.
- params:
  - content: text content
  - controller: text controller, default new instance

```
public init(subcomponent: () -> Unit)
```

- params:
  - subcomponent:child content builder function

```
public init(content: AppResource, controller!: TextController = TextController())
```

- params:
  - content: text content resource reference
  - controller:textcontroller

## width
```
public func width(value: Length): This
```

- description:Sets the text block's overall width to `value`. Returns `This` for chaining.
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the text block's overall height to `value`. Returns `This` for chaining.
- params:
  - value:height
- return:This

## fontSize
```
public func fontSize(value: Length): This
```

- description:Sets the text font size to `value` (Length type, e.g. `16.fp`). Returns `This` for chaining.
- params:
  - value:font size
- return:This

## maxFontSize
```
public func maxFontSize(value: Length): This
```

- description:Sets the maximum font size (used by adaptive sizing) to `value` (Length type). Returns `This` for chaining.
- params:
  - value:maxfont size
- return:This

## minFontSize
```
public func minFontSize(value: Length): This
```

- description:Sets the minimum font size (used by adaptive sizing) to `value` (Length type). Returns `This` for chaining.
- params:
  - value:minimumfont size
- return:This

## fontColor
```
public func fontColor(value: ResourceColor): This
```

- description:Sets the text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:text color
- return:This

## fontStyle
```
public func fontStyle(value: FontStyle): This
```

- description:Sets the text font style to `value` (`FontStyle` enum: `Normal`/`Italic`). Returns `This` for chaining.
- params:
  - value:font style，FontStyle enum
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```

- description:Sets the text font weight to `value` (`FontWeight` enum, e.g. `Normal`/`Bold`). Returns `This` for chaining.
- params:
  - value:font weight, FontWeight enum
- return:This

## fontFamily
```
public func fontFamily(value: String): This
```

- description:Sets the text font family to `value` (font name string, e.g. `"HarmonyOS Sans"`). Returns `This` for chaining.
- params:
  - value:font family name
- return:This

```
public func fontFamily(content: AppResource): This
```

- params:
  - content:font family resource reference
- return:This

## textAlign
```
public func textAlign(value: TextAlign): This
```

- description:Sets the text horizontal alignment to `value` (`TextAlign` enum: `Left`/`Center`/`Right`). Returns `This` for chaining.
- params:
  - value: alignment mode，TextAlign enum
- return:This

## textOverflow
```
public func textOverflow(value: TextOverflow): This
```

- description:Sets the text overflow behavior to `value` (`TextOverflow` enum: `Clip`/`Ellipsis`/`None`). Returns `This` for chaining.
- params:
  - value: overflow mode, TextOverflow enum
- return:This

## maxLines
```
public func maxLines(value: Int32): This
```

- description:Sets the maximum number of text lines to `value`. Returns `This` for chaining.
- params:
  - value:maxline count
- return:This

## lineHeight
```
public func lineHeight(value: Length): This
```

- description:Sets the text line height to `value` (Length type). Returns `This` for chaining.
- params:
  - value:line height
- return:This

## decoration
```
public func decoration(decorationType!: TextDecorationType, color!: ResourceColor, decorationStyle!: TextDecorationStyle = TextDecorationStyle.SOLID): This
```

- description:Sets the text decoration: `decorationType` (e.g. `Underline`/`LineThrough`/`None`), `color` (decoration line color) and `decorationStyle` (decoration line style, default `SOLID`). Returns `This` for chaining.
- params:
  - decorationType:decorationtype，TextDecorationType enum
  - color:decorationlinecolor
  - decorationStyle: decoration line style, default SOLID
- return:This

## baselineOffset
```
public func baselineOffset(value: Length): This
```

- description:Sets the text baseline offset to `value` (Length type). Returns `This` for chaining.
- params:
  - value:baseline offset
- return:This

## textCase
```
public func textCase(value: TextCase): This
```

- description:Sets the letter-case transformation to `value` (`TextCase` enum: `LowerCase`/`UpperCase`/`TitleCase`). Returns `This` for chaining.
- params:
  - value:letter case mode, TextCase enum
- return:This

## foregroundColor
```
public func foregroundColor(color: ResourceColor): This
```

- description:Sets the text foreground color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color:foreground color
- return:This

## responseRegion
```
public func responseRegion(rect: Rectangle): This
```

- description:Sets the hit-test response region to `rect` (a `Rectangle`), overriding the default text-bounding-box hit area. Returns `This` for chaining.
- params:
  - rect:response area rectangle
- return:This

## responseRegionArray
```
public func responseRegionArray(array: Array<Rectangle>): This
```

- description:Sets the hit-test response region to the union of `array` (`Array<Rectangle>`). Returns `This` for chaining.
- params:
  - array:response area rectangle array
- return:This

## font
```
public func font(value: TextFont): This
```

- description:Sets the text font (size, weight, family, style) from the `value` `TextFont` configuration object. Returns `This` for chaining.
- params:
  - value: font configuration, TextFont
- return:This

## textShadow
```
public func textShadow(value: ShadowOptions): This
```

- description:Sets the text shadow(s) from `value` (`ShadowOptions` or `Array<ShadowOptions>`). Returns `This` for chaining.
- params:
  - value:shadowoption
- return:This

```
public func textShadow(value: Array<ShadowOptions>): This
```

- params:
  - value:shadowoptionarray
- return:This

## dataDetectorConfig
```
public func dataDetectorConfig(textType: Array<TextDataDetectorType>, onDetectResultUpdate!: (String) -> Unit = {_ =>}, color!: ResourceColor = Color(0xff0a59f7), decorationType!: TextDecorationType = TextDecorationType.Underline, decorationColor!: ResourceColor = Color(0xff0a59f7), decorationStyle!: TextDecorationStyle = TextDecorationStyle.SOLID): This
```

- description:Configures the data detector: `textType` (data type array to recognize), `onDetectResultUpdate` (recognition result callback, default no-op), `color` (recognized text color, default `Color(0xff0a59f7)`), `decorationType` (decoration type, default `Underline`), `decorationColor` (default `Color(0xff0a59f7)`), `decorationStyle` (default `SOLID`). Returns `This` for chaining.
- params:
  - textType: data type array to recognize
  - onDetectResultUpdate: recognition result callback
  - color:recognizetextcolor
  - decorationType: recognized text decoration type, default underline
  - decorationColor:decorationlinecolor
  - decorationStyle: decoration line style, default SOLID
- return:This

## halfLeading
```
public func halfLeading(value: Bool): This
```

- description:Sets whether to apply half-leading above and below the text to `value` (Bool). Returns `This` for chaining.
- params:
  - value:whether enabled
- return:This

## fontFeature
```
public func fontFeature(value: String): This
```

- description:Sets the OpenType font feature string to `value` (e.g. `"ss01"`). Returns `This` for chaining.
- params:
  - value: font feature string
- return:This

## lineBreakStrategy
```
public func lineBreakStrategy(value: LineBreakStrategy): This
```

- description:Sets the line break strategy to `value` (`LineBreakStrategy` enum). Returns `This` for chaining.
- params:
  - value: line break strategy, LineBreakStrategy enum
- return:This

## lineSpacing
```
public func lineSpacing(value: Length): This
```

- description:Sets the inter-line spacing to `value` (Length type). Returns `This` for chaining.
- params:
  - value:rowspacing
- return:This

## copyOption
```
public func copyOption(value: CopyOptions): This
```

- description:Sets whether and how the text can be copied to `value` (`CopyOptions` enum: `None`/`InApp`/`LocalDevice`/`CrossDevice`). Returns `This` for chaining.
- params:
  - value:copy option, CopyOptions enum
- return:This

## letterSpacing
```
public func letterSpacing(value: Length): This
```

- description:Sets the inter-character spacing to `value` (Length type). Returns `This` for chaining.
- params:
  - value:character spacing
- return:This

## maxFontScale
```
public func maxFontScale(value: Float32): This
```

- description:Sets the maximum font zoom factor to `value` (Float32). Returns `This` for chaining.
- params:
  - value: max zoom factor
- return:This

## minFontScale
```
public func minFontScale(value: Float32): This
```

- description:Sets the minimum font zoom factor to `value` (Float32). Returns `This` for chaining.
- params:
  - value: minimum zoom factor
- return:This

## textSelectable
```
public func textSelectable(value: TextSelectable): This
```

- description:Sets the text selection mode to `value` (`TextSelectable` enum). Returns `This` for chaining.
- params:
  - value: selectable mode, TextSelectable enum
- return:This

## heightAdaptivePolicy
```
public func heightAdaptivePolicy(value: TextHeightAdaptivePolicy): This
```

- description:Sets the height adaptive strategy to `value` (`TextHeightAdaptivePolicy` enum: `MAX_LINES_FIRST`/`MIN_FONT_SIZE_FIRST`/`LAYOUT_CONSTRAINT_FIRST`). Returns `This` for chaining.
- params:
  - value: adaptive strategy, TextHeightAdaptivePolicy enum
- return:This

## editMenuOptions
```
public func editMenuOptions(onCreateMenu: (Array<TextMenuItem>) -> Array<TextMenuItem>, onMenuItemClick: (TextMenuItem, Int32, Int32) -> Bool): This
```

- description:Configures the custom edit menu via `onCreateMenu` (callback returning menu items) and `onMenuItemClick` (callback returning whether the event is consumed). Returns `This` for chaining.
- params:
  - onCreateMenu: create menu callback, returns menu item array
  - onMenuItemClick: menu item click callback, returns whether the event is consumed
- return:This

## enableDataDetector
```
public func enableDataDetector(value: Bool): This
```

- description:Enables or disables data detection. When `value` is `true` recognized data types are highlighted; when `false` they are not. Returns `This` for chaining.
- params:
  - value:whether enabled
- return:This

## wordBreak
```
public func wordBreak(value: WordBreak): This
```

- description:Sets the word break rule to `value` (`WordBreak` enum). Returns `This` for chaining.
- params:
  - value: line break rule, WordBreak enum
- return:This

## selection
```
public func selection(start: Int32, end: Int32): This
```

- description:Selects the text in the range [`start`, `end`] (character offsets). Returns `This` for chaining.
- params:
  - start:startposition
  - end:endposition
- return:This

## textIndent
```
public func textIndent(value: Length): This
```

- description:Sets the first-line indent to `value` (Length type). Returns `This` for chaining.
- params:
  - value: indent amount
- return:This

## ellipsisMode
```
public func ellipsisMode(value: EllipsisMode): This
```

- description:Sets the ellipsis display mode to `value` (`EllipsisMode` enum). Returns `This` for chaining.
- params:
  - value: ellipsis mode, EllipsisMode enum
- return:This

## onCopy
```
public func onCopy(callback: (String) -> Unit): This
```

- description:Registers the copy callback.
- params:
  - callback:callback function
  - String: copied text
- return:This

## onTextSelectionChange
```
public func onTextSelectionChange(callback: (Int32, Int32) -> Unit): This
```

- description:Registers the text selection change callback.
- params:
  - callback:callback function
  - Int32:startposition
  - Int32:endposition
- return:This

## bindSelectionMenu
```
public func bindSelectionMenu(spanType: TextSpanType, content: () -> Unit, responseType: TextResponseType, onAppear!: (Int32, Int32) -> Unit = {_, _ =>}, onDisappear!: () -> Unit = {=>}): This
```

- description:Binds a custom selection menu for `spanType` (`TextSpanType`) with `content` builder, `responseType` (`TextResponseType`), and optional `onAppear`/`onDisappear` callbacks (default no-op). Returns `This` for chaining.
- params:
  - spanType: text span type, TextSpanType enum
  - content: menu content builder function
  - responseType: response type, TextResponseType enum
  - onAppear: menu appear callback
  - onDisappear: menu disappear callback
- return:This

## draggable
```
public func draggable(value: Bool): This
```

- description:Enables or disables drag-to-select-and-clipboard-copy behaviour. When `value` is `true` the text can be dragged to copy; when `false` it cannot. Returns `This` for chaining.
- params:
  - value:whether draggable
- return:This

## privacySensitive
```
public func privacySensitive(value: Bool): This
```

- description:Marks the text content as privacy-sensitive. When `value` is `true` the content is masked in screenshots/recents; when `false` it is not. Returns `This` for chaining.
- params:
  - value: whether privacy sensitive
- return:This
