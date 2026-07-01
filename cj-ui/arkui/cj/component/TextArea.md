# TextArea

Multi-line text input box component, supports line wrapping, scrollbar, placeholder text, etc. Most style methods delegate to the internal TextField implementation.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## SelectionOptions
```
public struct SelectionOptions
```


### init

```
public init(menuPolicy!: MenuPolicy = MenuPolicy.Default)
```

- description:Constructs an instance with the given parameters.
- params:
  - menuPolicy:menustrategy，default Default

## TextAreaController
```
public class TextAreaController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### stopEditing

```
public func stopEditing(): Unit
```

- description:Stops editing, causing the text area to lose focus and dismiss the soft keyboard.
### setTextSelection

```
public func setTextSelection(selectionStart: Int32, selectionEnd: Int32, options!: SelectionOptions = SelectionOptions()): Unit
```

- description:Sets the text selection range to [`selectionStart`, `selectionEnd`], with `options` controlling the selection menu policy.
- params:
  - selectionStart:start
  - selectionEnd:end
  - options:option

### caretPosition

```
public func caretPosition(value: Int32)
```

- description:Moves the input caret to the character offset `value`.
- params:
  - value:position

### getTextContentLineCount

```
public func getTextContentLineCount(): Int32
```

- description:Returns the text content line count.
- return:line count

## init
```
public init(placeholder!: String = "", text!: String = "", controller!: TextAreaController = TextAreaController())
```

- description:Constructs an instance with the given parameters.
- params:
  - placeholder:placeholder text, default empty
  - text: initial text，defaultempty
  - controller:controller

> Also has `placeholder: AppResource` and `text: AppResource` resource combination overloads with identical behavior.

## placeholderColor
```
public func placeholderColor(value: ResourceColor): This
```
- description:Sets the placeholder text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## caretColor
```
public func caretColor(value: ResourceColor): This
```
- description:Sets the caret (cursor) color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## placeholderFont
```
public func placeholderFont(size!: Length, weight!: FontWeight = FontWeight.W400, family!: String = "", style!: FontStyle = FontStyle.Normal): This
```
- description:Sets the placeholder font: `size` (Length, default unset), `weight` (default `W400`), `family` (default empty) and `style` (default `Normal`). Returns `This` for chaining.
- return:This

## textAlign
```
public func textAlign(value: TextAlign): This
```
- description:Sets the input text horizontal alignment to `value` (`TextAlign` enum: `Left`/`Center`/`Right`). Returns `This` for chaining.
- return:This

## fontSize
```
public func fontSize(value: Length): This
```
- description:Sets the input text font size to `value` (Length type). Returns `This` for chaining.
- return:This

## fontColor
```
public func fontColor(value: ResourceColor): This
```
- description:Sets the input text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```
- description:Sets the input text font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- return:This

## fontStyle
```
public func fontStyle(value: FontStyle): This
```
- description:Sets the input text font style to `value` (`FontStyle` enum: `Normal`/`Italic`). Returns `This` for chaining.
- return:This

## fontFamily
```
public func fontFamily(value: String): This
```
- description:Sets the input text font family to `value` (font name string). Returns `This` for chaining.
- return:This

```
public func fontFamily(value: AppResource): This
```
- return:This

## enterKeyType
```
public func enterKeyType(value: EnterKeyType): This
```
- description:Sets the soft-keyboard enter key type to `value` (`EnterKeyType` enum). Returns `This` for chaining.
- return:This

## inputFilter
```
public func inputFilter(value!: String, error!: (String) -> Unit = {val =>}): This
```
- description:Sets the input filter to `value` (regex pattern); non-matching input is rejected and `error` (default no-op) is invoked with the rejected text. Returns `This` for chaining.
- return:This

## maxLength
```
public func maxLength(value: UInt32): This
```
- description:Sets the maximum number of input characters to `value`. Returns `This` for chaining.
- return:This

## fontFeature
```
public func fontFeature(value: String): This
```
- description:Sets the OpenType font feature string to `value` (e.g. `"ss01"`). Returns `This` for chaining.
- return:This

## lineHeight
```
public func lineHeight(value: Length): This
```
- description:Sets the input text line height to `value` (Length type). Returns `This` for chaining.
- return:This

## lineSpacing
```
public func lineSpacing(value: Length): This
```
- description:Sets the inter-line spacing to `value` (Length type). Returns `This` for chaining.
- return:This

## letterSpacing
```
public func letterSpacing(value: Length): This
```
- description:Sets the inter-character spacing to `value` (Length type). Returns `This` for chaining.
- return:This

## decoration
```
public func decoration(`type`!: TextDecorationType, color!: ResourceColor = Color.BLACK, style!: TextDecorationStyle = TextDecorationStyle.SOLID): This
```
- description:Sets the text area's text decoration: `type` (decoration type), `color` (decoration line color, default `Color.BLACK`) and `style` (decoration line style, default `SOLID`). Returns `This` for chaining.
- return:This

## lineBreakStrategy
```
public func lineBreakStrategy(value: LineBreakStrategy): This
```
- description:Sets the line break strategy to `value` (`LineBreakStrategy` enum). Returns `This` for chaining.
- return:This

## wordBreak
```
public func wordBreak(value: WordBreak): This
```
- description:Sets the word break rule to `value` (`WordBreak` enum). Returns `This` for chaining.
- return:This

## heightAdaptivePolicy
```
public func heightAdaptivePolicy(value: TextHeightAdaptivePolicy): This
```
- description:Sets the height adaptive strategy to `value` (`TextHeightAdaptivePolicy` enum: `MAX_LINES_FIRST`/`MIN_FONT_SIZE_FIRST`/`LAYOUT_CONSTRAINT_FIRST`). Returns `This` for chaining.
- return:This

## maxFontSize
```
public func maxFontSize(value: Length): This
```
- description:Sets the maximum font size (used by adaptive sizing) to `value` (Length type). Returns `This` for chaining.
- return:This

## minFontSize
```
public func minFontSize(value: Length): This
```
- description:Sets the minimum font size (used by adaptive sizing) to `value` (Length type). Returns `This` for chaining.
- return:This

## selectedBackgroundColor
```
public func selectedBackgroundColor(value: ResourceColor): This
```
- description:Sets the background color of selected text to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## caretStyle
```
public func caretStyle(value: Length, color: ResourceColor): This
```
- description:Sets the caret (cursor) style: `value` (width, Length type) and `color` (`ResourceColor`). Returns `This` for chaining.
- return:This

## textIndent
```
public func textIndent(value: Length): This
```
- description:Sets the first-line indent to `value` (Length type). Returns `This` for chaining.
- return:This

## textOverflow
```
public func textOverflow(value: TextOverflow): This
```
- description:Sets the text overflow behavior to `value` (`TextOverflow` enum: `Clip`/`Ellipsis`/`None`). Returns `This` for chaining.
- return:This

## enablePreviewText
```
public func enablePreviewText(value: Bool): This
```
- description:Sets whether preview text is enabled. When `value` is `true` the text area shows preview text; when `false` it does not. Returns `This` for chaining.
- return:This

## barState
```
public func barState(value: BarState): This
```
- description:Sets the scrollbar display state to `value` (`BarState` enum: `Visible`/`Hidden`/`Auto`). Returns `This` for chaining.
- return:This

## selectionMenuHidden
```
public func selectionMenuHidden(value: Bool): This
```
- description:Sets whether the text-selection menu is hidden. When `value` is `true` the menu is hidden; when `false` it is shown. Returns `This` for chaining.
- return:This

## showCounter
```
public func showCounter(value!: Bool, thresholdPercentage!: Float64 = 0.0, highlightBorder!: Bool = true): This
```
- description:Sets whether the input counter is shown. When `value` is `true` the counter is displayed; `thresholdPercentage` (default `0.0`) sets the highlight threshold and `highlightBorder` (default `true`) whether to highlight the border. Returns `This` for chaining.
- return:This

## maxLines
```
public func maxLines(value: Int32): This
```
- description:Sets the maximum number of input text lines to `value`. Returns `This` for chaining.
- return:This

## enableKeyboardOnFocus
```
public func enableKeyboardOnFocus(value: Bool): This
```
- description:Sets whether the soft keyboard is shown when the text area gains focus. When `value` is `true` the keyboard opens on focus; when `false` it does not. Returns `This` for chaining.
- return:This

## contentType
```
public func contentType(value: ContentType): This
```
- description:Sets the autofill content type to `value` (`ContentType` enum). Returns `This` for chaining.
- return:This

## enableAutoFill
```
public func enableAutoFill(value: Bool): This
```
- description:Sets whether autofill is enabled. When `value` is `true` autofill is enabled; when `false` it is disabled. Returns `This` for chaining.
- return:This

## copyOption
```
public func copyOption(value: CopyOptions): This
```
- description:Sets whether and how the input text can be copied to `value` (`CopyOptions` enum). Returns `This` for chaining.
- return:This

## customKeyboard
```
public func customKeyboard(value: () -> Unit, options!: Bool = false): This
```
- description:Binds a custom keyboard built by `value`; `options` (default `false`) controls whether the keyboard is a one-way panel. Returns `This` for chaining.
- return:This

## borderStyle
```
public func borderStyle(style: BorderStyle): This
```
- description:Sets the input border style to `style` (`BorderStyle` enum: `Solid`/`Dashed`/`Dotted`). Returns `This` for chaining.
- return:This

## borderWidth
```
public func borderWidth(width: Length): This
```
- description:Sets the input border width to `width` (Length type, or `EdgeWidths`). Returns `This` for chaining.
- return:This

```
public func borderWidth(edgeWidths: EdgeWidths): This
```
- return:This

## borderColor
```
public func borderColor(color: ResourceColor): This
```
- description:Sets the input border color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```
- description:Sets the input border corner radius to `radius` (Length type). Returns `This` for chaining.
- return:This

## backgroundColor
```
public func backgroundColor(value: ResourceColor): This
```
- description:Sets the input background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## height
```
public func height(width: Length): This
```
- description:Sets the text area's overall height to `width`. Returns `This` for chaining.
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```
- description:Sets the text area's overall `width` and `height`. Returns `This` for chaining.
- return:This

## padding
```
public func padding(value: Length): This
```
- description:Sets the text area's inner padding to `value`. Returns `This` for chaining.
- return:This

## onSubmit
```
public func onSubmit(callback: (EnterKeyType) -> Unit): This
```
- description:Registers the submit callback.
- return:This

## onChange
```
public func onChange(callback: (String) -> Unit): This
```
- description:Registers the change callback.
- return:This

## onCopy
```
public func onCopy(callback: (String) -> Unit): This
```
- description:Registers the copy callback.
- return:This

## onCut
```
public func onCut(callback: (String) -> Unit): This
```
- description:Registers the cut callback.
- return:This

## onPaste
```
public func onPaste(callback: (String) -> Unit): This
```
- description:Registers the paste callback.
- return:This

## onEditChanged
```
public func onEditChanged(callback: (Bool) -> Unit): This
```
- description:Registers the edit changed callback.
- return:This

## onEditChange
```
public func onEditChange(callback: (Bool) -> Unit): This
```
- description:Registers the edit change callback.
- return:This

## onContentScroll
```
public func onContentScroll(callback: (Float32, Float32) -> Unit): This
```
- description:Registers the content scroll callback.
- return:This

## onTextSelectionChange
```
public func onTextSelectionChange(callback: (Int32, Int32) -> Unit): This
```
- description:Registers the text selection change callback.
- return:This

## onDidDelete
```
public func onDidDelete(callback: (Float64, Int32, String) -> Unit): This
```
- description:Registers the did delete callback.
- return:This

## onWillDelete
```
public func onWillDelete(callback: (Float64, Int32, String) -> Bool): This
```
- description:Registers the will delete callback.
- return:This

## onDidInsert
```
public func onDidInsert(callback: (Float64, String) -> Unit): This
```
- description:Registers the did insert callback.
- return:This

## onWillInsert
```
public func onWillInsert(callback: (Float64, String) -> Bool): This
```
- description:Registers the will insert callback.
- return:This

## `type`
```
public func `type`(value: TextAreaType): This
```

- description:Sets the placeholder text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:type，TextAreaType enum
- return:This

## style
```
public func style(value: TextContentStyle): This
```

- description:Sets the text area's style to `value` (`TextContentStyle` enum: `Default`/`Inline`). Returns `This` for chaining.
- return:This

## TextAreaType
```
public enum TextAreaType
```

- enum:
  - NORMAL / NUMBER / PHONE_NUMBER / EMAIL / NUMBER_DECIMAL / URL
