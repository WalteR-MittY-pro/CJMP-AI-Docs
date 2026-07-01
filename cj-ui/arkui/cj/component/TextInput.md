# TextInput

Single-row text input box component, supports placeholder, password, filter, custom keyboard etc. Multiple style methods delegate to the internal TextField implementation.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## TextInputController
```
public class TextInputController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### caretPosition

```
public func caretPosition(value: Int32): Unit
```

- description:Moves the input caret to the character offset `value`.
### setTextSelection

```
public func setTextSelection(selectionStart: Int32, selectionEnd: Int32, options!: MenuPolicy = MenuPolicy.Default): Unit
```

- description:Sets the text selection range to [`selectionStart`, `selectionEnd`] (character offsets); `options` (default `Default`) controls the selection menu policy.
- params:
  - selectionStart:start
  - selectionEnd:end
  - options:menu strategy, default Default

### stopEditing

```
public func stopEditing(): Unit
```

- description:Stops editing, causing the input to lose focus and dismiss the soft keyboard.
### getTextContentLineCount

```
public func getTextContentLineCount(): Int32
```

- description:Returns the text content line count.
- return:line count

## init
```
public TextInput(placeholder!: String = "", text!: String = "", controller!: TextInputController = TextInputController())
```

- params:
  - placeholder:placeholder text, default empty
  - text: initial text，defaultempty
  - controller:controller

> Also has `placeholder: AppResource`、`text: AppResource`  resource combination overload with identical behavior。

## enterKeyType
```
public func enterKeyType(value: EnterKeyType): This
```

- description:Sets the soft-keyboard enter key type to `value` (`EnterKeyType` enum). Returns `This` for chaining.
- params:
  - value:enter key type, EnterKeyType enum
- return:This

## textAlign
```
public func textAlign(value: TextAlign): This
```

- description:Sets the input text horizontal alignment to `value` (`TextAlign` enum: `Left`/`Center`/`Right`). Returns `This` for chaining.
- params:
  - value: alignment mode，TextAlign enum
- return:This

## setType
```
public func setType(value: InputType): This
```

- description:Sets the input type to `value` (`InputType` enum: e.g. `Normal`/`Number`/`Phone`/`Email`), which controls the soft keyboard layout. Returns `This` for chaining.
- params:
  - value:input type, InputType enum
- return:This

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

## maxLength
```
public func maxLength(value: UInt32): This
```

- description:Sets the maximum number of input characters to `value`. Returns `This` for chaining.
- return:This

## fontSize
```
public func fontSize(value: Length): This
```

- description:Sets the input text font size to `value` (Length type). Returns `This` for chaining.
- return:This

## fontColor
```
public func fontColor(value: ResourceColor)
```

- description:Sets the input text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight)
```

- description:Sets the input text font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- return:This

## fontStyle
```
public func fontStyle(value: FontStyle)
```

- description:Sets the input text font style to `value` (`FontStyle` enum: `Normal`/`Italic`). Returns `This` for chaining.
- return:This

## fontFamily
```
public func fontFamily(value: String | AppResource): This
```

- description:Sets the input text font family to `value` (a font name string or `AppResource` reference). Returns `This` for chaining.
- return:This

## inputFilter
```
public func inputFilter(value!: String, error!: (String) -> Unit = { val => }): This
```

- description:Sets the input filter to `value` (regex pattern); non-matching input is rejected and `error` (default no-op) is invoked with the rejected text. Returns `This` for chaining.
- params:
  - value:regex string
  - error:errorcallback
- return:This

## onSubmit
```
public func onSubmit(callback: (EnterKeyType) -> Unit): This
```

- description:Registers the submit callback.
- params:
  - callback:callback function
  - EnterKeyType:enter key type
- return:This

```
public func onSubmit(callback: (EnterKeyType, SubmitEvent) -> Unit): This
```

- return:This

## onChange
```
public func onChange(callback: (String) -> Unit): This
```

- description:Registers the change callback.
- params:
  - callback:callback function
  - String:currenttext
- return:This

## onCopy
```
public func onCopy(callback: (String) -> Unit): This
```

- description:Registers the copy callback.
- params:
  - callback:callback function
  - String:copied text
- return:This

## onCut
```
public func onCut(callback: (String) -> Unit): This
```

- description:Registers the cut callback.
- params:
  - callback:callback function
  - String:cut text
- return:This

## onPaste
```
public func onPaste(callback: (String) -> Unit): This
```

- description:Registers the paste callback.
- params:
  - callback:callback function
  - String:pasted text
- return:This

## onEditChange
```
public func onEditChange(callback: (Bool) -> Unit): This
```

- description:Registers the edit change callback.
- return:This

## onDidDelete
```
public func onDidDelete(callback: (Float64, Int32, String) -> Unit): This
```

- description:Registers the did delete callback.
- params:
  - Float64:offset
  - Int32: direction
  - String: deleted text
- return:This

## onWillDelete
```
public func onWillDelete(callback: (Float64, Int32, String) -> Bool): This
```

- description:Registers the will delete callback.
- params:
  - Float64:offset
  - Int32: direction
  - String: deleted text
- return:This

## onDidInsert
```
public func onDidInsert(callback: (Float64, String) -> Unit): This
```

- description:Registers the did insert callback.
- params:
  - Float64:offset
  - String: insert text
- return:This

## onWillInsert
```
public func onWillInsert(callback: (Float64, String) -> Bool): This
```

- description:Registers the will insert callback.
- params:
  - Float64:offset
  - String: insert text
- return:This

## onSecurityStateChange
```
public func onSecurityStateChange(callback: (Bool) -> Unit): This
```

- description:Registers the security state change callback.
- return:This

## showPassword
```
public func showPassword(visible: Bool): This
```

- description:Sets whether the password is visible. When `visible` is `true` the password text is shown; when `false` it is masked. Returns `This` for chaining.
- return:This

## showPasswordIcon
```
public func showPasswordIcon(visible: Bool): This
```

- description:Sets whether the password show/hide icon is displayed. When `visible` is `true` the icon is shown; when `false` it is hidden. Returns `This` for chaining.
- return:This

## lineHeight
```
public func lineHeight(value: Length): This
```
- description:Sets the input text line height to `value` (Length type). Returns `This` for chaining.
- return:This

## letterSpacing
```
public func letterSpacing(value: Length): This
```
- description:Sets the inter-character spacing to `value` (Length type). Returns `This` for chaining.
- return:This

## decoration
```
public func decoration(decorationType!: TextDecorationType = TextDecorationType.None, color!: ResourceColor = Color.BLACK, style!: TextDecorationStyle = TextDecorationStyle.SOLID): This
```
- description:Sets the input's text decoration: `decorationType` (default `None`), `color` (decoration line color, default `Color.BLACK`) and `style` (decoration line style, default `SOLID`). Returns `This` for chaining.
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

## lineBreakStrategy
```
public func lineBreakStrategy(strategy: LineBreakStrategy): This
```
- description:Sets the line break strategy to `strategy` (`LineBreakStrategy` enum). Returns `This` for chaining.
- return:This

## wordBreak
```
public func wordBreak(value: WordBreak): This
```
- description:Sets the word break rule to `value` (`WordBreak` enum). Returns `This` for chaining.
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

## fontFeature
```
public func fontFeature(value: String): This
```
- description:Sets the OpenType font feature string to `value` (e.g. `"ss01"`). Returns `This` for chaining.
- return:This

## underlineColor
```
public func underlineColor(color: ResourceColor): This
```

- description:Sets the input text line height to `value` (Length type). Returns `This` for chaining.
- return:This

```
public func underlineColor(typing!: ?Color = None, normal!: ?Color = None, error!: ?Color = None, disable!: ?Color = None): This
```

- return:This

## enablePreviewText
```
public func enablePreviewText(value: Bool): This
```

- description:Sets whether preview text is enabled. When `value` is `true` the input shows preview text; when `false` it does not. Returns `This` for chaining.
- return:This

## showError
```
public func showError(value: String | AppResource): This
```

- description:Sets the error message displayed below the input to `value` (a string or `AppResource`). Returns `This` for chaining.
- return:This

## showCounter
```
public func showCounter(value: Bool, thresholdPercentage!: Float64 = 0.0, highlightBorder!: Bool = true): This
```

- description:Sets whether the input counter is shown. When `value` is `true` the counter is displayed; `thresholdPercentage` (default `0.0`) sets the highlight threshold and `highlightBorder` (default `true`) whether to highlight the border. Returns `This` for chaining.
- params:
  - value:whether to show
  - thresholdPercentage:threshold percentage
  - highlightBorder:whether to highlight border
- return:This

## customKeyboard
```
public func customKeyboard(value: () -> Unit, options!: Bool = false): This
```

- description:Binds a custom keyboard built by `value`; `options` (default `false`) controls whether the keyboard is a one-way panel. Returns `This` for chaining.
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

## passwordRules
```
public func passwordRules(value: String): This
```

- description:Sets the password generation rules string to `value` (e.g. `"minlen:8;upper:1;lower:1;special:1"`). Returns `This` for chaining.
- return:This

## selectAll
```
public func selectAll(value: Bool): This
```

- description:Sets whether all text is selected on focus. When `value` is `true` all text is selected; when `false` it is not. Returns `This` for chaining.
- return:This

## cancelButton
```
public func cancelButton(style!: CancelButtonStyle, size!: Length, color!: ResourceColor, src!: String | AppResource): This
```

- description:Sets the cancel (clear) button: `style` (`CancelButtonStyle`), `size` (Length), `color` (`ResourceColor`) and `src` (icon path or `AppResource`). Returns `This` for chaining.
- return:This

## style
```
public func style(value: TextInputStyle): This
```

- description:Sets the input's style to `value` (`TextInputStyle` enum: `Default`/`Inline`). Returns `This` for chaining.
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

## enableKeyboardOnFocus
```
public func enableKeyboardOnFocus(value: Bool): This
```
- description:Sets whether the soft keyboard is shown when the input gains focus. When `value` is `true` the keyboard opens on focus; when `false` it does not. Returns `This` for chaining.
- return:This

## barState
```
public func barState(value: BarState): This
```
- description:Sets the scrollbar display state to `value` (`BarState` enum: `Visible`/`Hidden`/`Auto`). Returns `This` for chaining.
- return:This

## copyOption
```
public func copyOption(value: CopyOptions): This
```
- description:Sets whether and how the input text can be copied to `value` (`CopyOptions` enum). Returns `This` for chaining.
- return:This

## selectionMenuHidden
```
public func selectionMenuHidden(value: Bool): This
```
- description:Sets whether the text-selection menu is hidden. When `value` is `true` the menu is hidden; when `false` it is shown. Returns `This` for chaining.
- return:This

## selectedBackgroundColor
```
public func selectedBackgroundColor(value: ResourceColor): This
```
- description:Sets the background color of selected text to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## passwordIcon
```
public func passwordIcon(onIconSrc!: String = "", offIconSrc!: String = ""): This
```

- description:Sets the password show/hide icons: `onIconSrc` (icon path when password is visible, default empty) and `offIconSrc` (icon path when password is masked, default empty). Returns `This` for chaining.
- return:This

## showUnderline
```
public func showUnderline(value: Bool): This
```
- description:Sets whether the input underline is shown. When `value` is `true` the underline is displayed; when `false` it is hidden. Returns `This` for chaining.
- return:This

## caretStyle
```
public func caretStyle(width!: Length, color!: ResourceColor): This
```
- description:Sets the caret (cursor) style: `width` (Length, default unset) and `color` (`ResourceColor`, default unset). Returns `This` for chaining.
- return:This

## caretPosition
```
public func caretPosition(value: Int32): This
```
- description:Sets the caret (cursor) character offset to `value` (Int32). Returns `This` for chaining.
- return:This

## maxLines
```
public func maxLines(value: Int32): This
```
- description:Sets the maximum number of input text lines to `value`. Returns `This` for chaining.
- return:This

## showUnit
```
public func showUnit(builder: () -> Unit): This
```
- description:Sets the unit content displayed beside the input, built by the `builder` closure. Returns `This` for chaining.
- return:This

## editMenuOptions
```
public func editMenuOptions(onCreateMenu: (Array<TextMenuItem>) -> Array<TextMenuItem>, onMenuItemClick: (TextMenuItem, Int32, Int32) -> Bool): This
```
- description:Configures the custom edit menu via `onCreateMenu` (callback returning menu items) and `onMenuItemClick` (callback returning whether the event is consumed). Returns `This` for chaining.
- return:This

## CancelButtonStyle
```
public enum CancelButtonStyle
```

- description:Style of the cancel (clear) button shown inside the input.
- enum:
  - CONSTANT:always displayed
  - INVISIBLE:not displayed
  - INPUT:displayed on input

## TextInputStyle
```
public enum TextInputStyle
```

- enum:
  - Default:default style
  - Inline:inline style
