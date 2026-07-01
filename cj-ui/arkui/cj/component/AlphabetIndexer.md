# AlphabetIndexer

Alphabet index bar component, commonly used on the right side of a list for quick alphabetical positioning, supports dialog enlarged display.

---

## init
```
public init(arrayValue!: Array<String>, selected!: UInt32)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - arrayValue:indexitemtextarray
  - selected:initialselected index

## autoCollapse
```
public func autoCollapse(value: Bool): This
```

- description:Sets whether the indexer auto-collapses when there is not enough space. When `value` is `true` auto-collapse is enabled; when `false` it is disabled. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: whether to auto collapse
- return:This

## color
```
public func color(value: ResourceColor): This
```

- description:Sets the indexer's text color (for non-selected letters) to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:textcolor
- return:This

## selectedColor
```
public func selectedColor(value: ResourceColor): This
```

- description:Sets the color of the currently selected letter to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:selected color
- return:This

## popupColor
```
public func popupColor(value: ResourceColor): This
```

- description:Sets the popup letter text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:dialogcolor
- return:This

## selectedBackgroundColor
```
public func selectedBackgroundColor(value: ResourceColor): This
```

- description:Sets the background color of the currently selected letter to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:selectedbackground color
- return:This

## popupBackground
```
public func popupBackground(value: ResourceColor): This
```

- description:Sets the popup background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:dialogbackground color
- return:This

## usingPopup
```
public func usingPopup(usingPopup: Bool): This
```

- description:Sets whether the popup is shown when a letter is pressed. When `usingPopup` is `true` the popup is displayed; when `false` it is hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - usingPopup: whether to use dialog
- return:This

## popupTitleBackground
```
public func popupTitleBackground(value: ResourceColor): This
```

- description:Sets the popup title background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:titlebackground color
- return:This

## popupBackgroundBlurStyle
```
public func popupBackgroundBlurStyle(value: BlurStyle): This
```

- description:Sets the popup background blur style to `value` (`BlurStyle` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:blur style, BlurStyle enum
- return:This

## popupItemBackgroundColor
```
public func popupItemBackgroundColor(value: ResourceColor): This
```

- description:Sets the background color of popup items to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:dialogitembackground color
- return:This

## popupUnselectedColor
```
public func popupUnselectedColor(value: ResourceColor): This
```

- description:Sets the popup unselected-item text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: unselected color
- return:This

## popupSelectedColor
```
public func popupSelectedColor(value: ResourceColor): This
```

- description:Sets the popup selected-item text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:selected color
- return:This

## selectedFont
```
public func selectedFont(size!: Length = 10.vp, weight!: FontWeight = FontWeight.Normal, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the font of the currently selected letter: `size` (default `10.vp`), `weight` (default `Normal`), `family` (default `"HarmonyOS Sans"`) and `style` (default `Normal`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - size:font size，default 10vp
  - weight:font weight, default Normal
  - family:font family, default HarmonyOS Sans
  - style:font style, default Normal
- return:This

> Also has a `family: AppResource` resource overload with identical behavior.

## popupFont
```
public func popupFont(size!: Length = 24.vp, weight!: FontWeight = FontWeight.Normal, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the popup letter font: `size` (default `24.vp`), `weight` (default `Normal`), `family` (default `"HarmonyOS Sans"`) and `style` (default `Normal`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - size:font size，default 24vp
  - weight:font weight, default Normal
  - family:font family, default HarmonyOS Sans
  - style:font style, default Normal
- return:This

> Also has a `family: AppResource` resource overload with identical behavior.

## popupItemFont
```
public func popupItemFont(size!: Length = 24.vp, weight!: FontWeight = FontWeight.Medium, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the popup item font: `size` (default `24.vp`), `weight` (default `Medium`), `family` (default `"HarmonyOS Sans"`) and `style` (default `Normal`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - size:font size，default 24vp
  - weight:font weight，default Medium
  - family:font family, default HarmonyOS Sans
  - style:font style, default Normal
- return:This

> Also has a `family: AppResource` resource overload with identical behavior.

## font
```
public func font(size!: Length = 10.vp, weight!: FontWeight = FontWeight.Normal, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the indexer's font: `size` (default `10vp`), `weight` (default `Normal`), `family` (default `HarmonyOS Sans`) and `style` (default `Normal`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - size:font size，default 10vp
  - weight:font weight, default Normal
  - family:font family, default HarmonyOS Sans
  - style:font style, default Normal
- return:This

> Also has a `family: AppResource` resource overload with identical behavior.

## itemSize
```
public func itemSize(size: Length): This
```

- description:Sets the size of each indexer letter item to `size` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - size: item size
- return:This

## itemBorderRadius
```
public func itemBorderRadius(value: Float64): This
```

- description:Sets the corner radius of each indexer letter item to `value` (Float64). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:corner radius
- return:This

## popupItemBorderRadius
```
public func popupItemBorderRadius(value: Float64): This
```

- description:Sets the corner radius of popup items to `value` (Float64). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:corner radius
- return:This

## alignStyle
```
public func alignStyle(align: IndexerAlign): This
```

- description:Sets the indexer alignment to `align` (`IndexerAlign` enum: `Left`/`Right`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - align:alignmentstyle，IndexerAlign enum
- return:This

## selected
```
public func selected(idx: UInt32): This
```

- description:Sets the currently selected index to `idx`. The corresponding letter is highlighted and the index list scrolls to bring it into view. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - idx:selected index
- return:This

## popupPosition
```
public func popupPosition(x!: Length = 60.vp, y!: Length = 48.vp): This
```

- description:Sets the popup position offset to (`x`, `y`) (Length type, default `60.vp` / `48.vp`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - x: X-axis offset, default 60vp
  - y: Y-axis offset, default 48vp
- return:This

## onSelect
```
public func onSelect(callback: (Int64) -> Unit): This
```

- description:Registers the select callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Int64:selected index
- return:This

## onRequestPopupData
```
public func onRequestPopupData(callback: (Int64) -> Array<String>): This
```

- description:Registers the request popup data callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Int64:selected index
  - return Array<String>:dialogchild itemtextarray
- return:This

## onPopupSelect
```
public func onPopupSelect(callback: (Int64) -> Unit): This
```

- description:Registers the popup select callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Int64:selected index
- return:This

## enableHapticFeedback
```
public func enableHapticFeedback(value: Bool): This
```

- description:Sets whether haptic feedback is enabled on letter touch. When `value` is `true` haptic feedback is enabled; when `false` it is disabled. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether enabled
- return:This
