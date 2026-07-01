# RichEditor

Rich text editor, supports mixed text and graphics, custom styles, and selection operations.

---

## Result structs (for query/callback)
- `TextDecorationResult` / `RichEditorTextStyleResult` / `RichEditorLayoutStyleResult` / `RichEditorImageSpanStyleResult` / `ShadowOptionsResult` — style query results
- `RichEditorSpanResult` / `RichEditorTextSpanResult` / `RichEditorImageSpanResult` — span query results
- `RichEditorInsertValue` / `RichEditorDeleteValue` — insert/delete values
- `RichEditorSpanPosition` / `RichEditorSelection` / `TextRange` — position/selection
- `PasteEvent` — pasteevent

## RichEditor
```
public class RichEditor <: ViewBase
```


### init

```
public init(controller: RichEditorController = ...)
```

- description:Constructs an instance with the given parameters.
### method（chainable, returns This）
- `onReady(callback)` — editor ready callback
- `aboutToIMEInput(...)` / `aboutToDelete(...)` / `onIMEInputComplete(...)` / `onDeleteComplete(...)` — input/delete interception
- `aboutToPaste(...)` / `onPaste(...)` — paste
- `onSelectionChange(...)` / `onTextSelectionChange(...)` — selection change
- `onContentChange(...)` / `onContentSizeChange(...)` — content change
- `customKeyboard(...)` / `editMenuOptions(...)` — custom keyboard/menu
- commonstyle:fontColor/fontSize/fontWeight/.../copyOption/...

> Rich text content insertion/deletion is done via `RichEditorController`.
