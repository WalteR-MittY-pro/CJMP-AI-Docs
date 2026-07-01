# Search

search boxcomponent，providessearch icon、clear button、search buttonandtext input。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## SearchController
```
public class SearchController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### caretPosition

```
public func caretPosition(carePosition: Int32): Unit
```

- description:Moves the input caret to the character offset `carePosition`.
### stopEditing

```
public func stopEditing(): Unit
```

- description:Stops editing, causing the search box to lose focus and dismiss the soft keyboard.
### setTextSelection

```
public func setTextSelection(selectionStart: Int32, selectionEnd: Int32, options!: MenuPolicy = MenuPolicy.Default): Unit
```

- description:Sets the text selection range to [`selectionStart`, `selectionEnd`] (character offsets); `options` (default `Default`) controls the selection menu policy. Returns `This` for chaining.
- params:
  - selectionStart:start
  - selectionEnd:end
  - options:menustrategy

### getTextContentLineCount

```
public func getTextContentLineCount(): Int32
```

- description:Returns the text content line count.
- return:line count

## init
```
public init(value!: String = "", placeholder!: String = "", icon!: Option<AppResource> = Option.None, controller!: Option<SearchController> = Option.None)
```

- description:Constructs an instance with the given parameters.
- params:
  - value:initialtext，defaultempty
  - placeholder:placeholder text, default empty
  - icon:search iconresource，default None
  - controller:controller，default None

## searchButton
```
public func searchButton(text: String): This
```

- description:Sets the search button text to `text`. Returns `This` for chaining.
- params:
  - text:button text
- return:This

## placeholderColor
```
public func placeholderColor(color: ResourceColor): This
```
- description:Sets the placeholder text color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## placeholderFont
```
public func placeholderFont(size!: Length = DEFAULT_SIZE.fp, weight!: FontWeight = FontWeight.W400, style!: FontStyle = FontStyle.Normal, family!: String = ""): This
```
- description:Sets the placeholder font: `size` (default `DEFAULT_SIZE.fp`), `weight` (default `W400`), `style` (default `Normal`) and `family` (default empty). Returns `This` for chaining.
- return:This

## textFont
```
public func textFont(size!: Length = DEFAULT_SIZE.fp, weight!: FontWeight = FontWeight.W400, style!: FontStyle = FontStyle.Normal, family!: String = ""): This
```
- description:Sets the input text font: `size` (default `DEFAULT_SIZE.fp`), `weight` (default `W400`), `style` (default `Normal`) and `family` (default empty). Returns `This` for chaining.
- return:This

## fontColor
```
public func fontColor(color: ResourceColor): This
```
- description:Sets the input text color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## fontFeature
```
public func fontFeature(text: String): This
```
- description:Sets the OpenType font feature string to `text` (e.g. `"ss01"`). Returns `This` for chaining.
- return:This

## textAlign
```
public func textAlign(value: TextAlign): This
```
- description:Sets the input text horizontal alignment to `value` (`TextAlign` enum: `Left`/`Center`/`Right`). Returns `This` for chaining.
- return:This

## copyOption
```
public func copyOption(copyOption: CopyOptions): This
```
- description:Sets whether and how the input text can be copied to `copyOption` (`CopyOptions` enum). Returns `This` for chaining.
- return:This

## maxLength
```
public func maxLength(value: UInt32): This
```
- description:Sets the maximum number of input characters to `value`. Returns `This` for chaining.
- return:This

## selectionMenuHidden
```
public func selectionMenuHidden(value: Bool): This
```
- description:Sets whether the text-selection menu is hidden. When `value` is `true` the menu is hidden; when `false` it is shown. Returns `This` for chaining.
- return:This

## enableKeyboardOnFocus
```
public func enableKeyboardOnFocus(value: Bool): This
```
- description:Sets whether the soft keyboard is shown when the search box gains focus. When `value` is `true` the keyboard opens on focus; when `false` it does not. Returns `This` for chaining.
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
public func decoration(decorationType!: TextDecorationType = TextDecorationType.None, color!: ResourceColor = Color.BLACK, decorationStyle!: TextDecorationStyle = TextDecorationStyle.SOLID): This
```
- description:Sets the search box's text decoration: `decorationType` (default `None`), `color` (decoration line color, default `Color.BLACK`) and `decorationStyle` (default `SOLID`). Returns `This` for chaining.
- return:This

## textIndent
```
public func textIndent(value: Length): This
```
- description:Sets the first-line indent to `value` (Length type). Returns `This` for chaining.
- return:This

## selectedBackgroundColor
```
public func selectedBackgroundColor(value: ResourceColor): This
```
- description:Sets the background color of selected text to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## enterKeyType
```
public func enterKeyType(value: EnterKeyType): This
```
- description:Sets the soft-keyboard enter key type to `value` (`EnterKeyType` enum). Returns `This` for chaining.
- return:This

## enablePreviewText
```
public func enablePreviewText(enable: Bool): This
```
- description:Sets whether preview text is enabled. When `enable` is `true` the search shows preview text; when `false` it does not. Returns `This` for chaining.
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

## cancelButton
```
public func cancelButton(style!: CancelButtonStyle, size!: Length, color!: ResourceColor, src!: String | AppResource): This
```

- description:Sets the placeholder text color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## searchIcon
```
public func searchIcon(size!: Length, color!: ResourceColor, src!: String | AppResource): This
```

- description:Sets the search icon: `size` (default unset), `color` (default unset) and `src` (default unset) accepting a string path or `AppResource`. Returns `This` for chaining.
- return:This

## `type`
```
public func `type`(searchType: SearchType): This
```

- description:Constructs an instance with the given parameters.
- return:This

## caretStyle
```
public func caretStyle(width!: Length, color!: ResourceColor): This
```

- description:Sets the caret style: `width` (default unset) and `color` (default unset). Returns `This` for chaining.
- return:This

## inputFilter
```
public func inputFilter(value!: String, error!: (String) -> Unit = { val => }): This
```

- description:Sets the input filter to `value` (regex pattern); non-matching input is rejected and `error` (default no-op) is invoked with the rejected text. Returns `This` for chaining.
- return:This

## customKeyboard
```
public func customKeyboard(value: () -> Unit, options!: Bool = false): This
```
- description:Binds a custom keyboard built by `value`; `options` (default `false`) controls whether the keyboard is a one-way panel. Returns `This` for chaining.
- return:This

## editMenuOptions
```
public func editMenuOptions(onCreateMenu: (Array<TextMenuItem>) -> Array<TextMenuItem>, onMenuItemClick: (TextMenuItem, Int32, Int32) -> Bool): This
```
- description:Configures the custom edit menu via `onCreateMenu` (callback returning menu items) and `onMenuItemClick` (callback returning whether the event is consumed). Returns `This` for chaining.
- return:This

## onSubmit
```
public func onSubmit(callback: (String) -> Unit): This
```
- description:Registers the submit callback.
- params:
  - callback:callback function
  - String:submittext
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

## borderWidth
```
public func borderWidth(width: Length): This
```
- description:Sets the search box border width (Length type). Returns `This` for chaining.
- return:This

## borderColor
```
public func borderColor(color: ResourceColor): This
```
- description:Sets the search box border color (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## borderStyle
```
public func borderStyle(style: BorderStyle): This
```
- description:Sets the search box border style (`BorderStyle` enum: `Solid`/`Dashed`/`Dotted`). Returns `This` for chaining.
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```
- description:Sets the search box border corner radius (Length type). Returns `This` for chaining.
- return:This

## height
```
public func height(value: Length): This
```
- description:Sets the search box's overall height to `value`. Returns `This` for chaining.
- return:This

## SearchType
```
public enum SearchType
```

- description:Selects the input type (and the corresponding soft keyboard) used by the search box.
- enum:
  - NORMAL / NUMBER / PHONE_NUMBER / EMAIL / NUMBER_DECIMAL / URL
