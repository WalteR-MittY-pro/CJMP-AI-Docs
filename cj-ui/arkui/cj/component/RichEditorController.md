# RichEditorController

Rich text editor controller, handles content insertion/deletion and cursor selection.

---

## Types
- `Margin` — margin
- `BorderRadiuses` — four-corner radius

## RichEditorController
(controller class paired with RichEditor)

### Content methods
- `addTextSpan(value, ...)` / `addImageSpan(...)` / `addBuilderSpan(...)` — append spans
- `updateSpanStyle(...)` / `updateImageSpanStyle(...)` — update span style
- `getSpans(...)` / `getImageSpan(...)` / `getTextStyles(...)` — query spans

### Selection and cursor
- `getCaretOffset()` / `setCaretOffset(...)` — cursor
- `getSelection()` / `setSelection(...)` — selection
- `deleteSpans(...)` / `getInlineSpanOptions(...)` — delete/query

### Other
- `requestKeyboard(...)` — request keyboard
- `closeSelectionMenu()` — closeselectmenu
