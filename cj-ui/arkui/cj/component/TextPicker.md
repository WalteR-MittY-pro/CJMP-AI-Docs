# TextPicker

Text picker component, supports single column and cascading multi-column, includes data source and two-way binding parameters.

---

## Result
- `TextPickerResult` / `TextPickerResData` — selection result (value + index)

## Two-way binding parameters
- `ValueParams` / `ValuesParams` / `SelectedParams` / `SelectedsParams` / `RangeParams` — encapsulate value/selection and change callback

## Data source
- `TextPickerRangeContent` — single column data item (text + icon)
- `TextCascadePickerRangeContent` — cascading data item (with children)

## Options
- `TextPickerOptions` — picker options

## TextPicker
```
public class TextPicker <: ViewBase
```

- Main methods:`selected(...)` / `onChange(callback)` / `onTextChange(callback)` / `defaultPickerItemHeight(...)` / `canLoop(...)` / `selectedTextStyle(...)` / `textStyle(...)` / `disappearTextStyle(...)` etc.
