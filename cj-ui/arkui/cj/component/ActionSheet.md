# ActionSheet

List selection dialog, popped up via static method, provides multiple option items for user selection.

---

## ActionSheetShadowOptions
```
public struct ActionSheetShadowOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public ActionSheetShadowOptions(public var radius: Float64, public var shadowType!: ShadowType = ShadowType.COLOR, public var color!: Color = Color.BLACK, public var offsetX!: Float64 = 0.0, public var offsetY!: Float64 = 0.0, public var fill!: Bool = false)
```

- APILevel:16
- params:
  - radius:blur radius
  - shadowType:shadowtype，default COLOR
  - color:color，defaultblack
  - offsetX:X offset，default 0.0
  - offsetY:Y offset，default 0.0
  - fill:whether to fill, default false

## SheetInfo
```
public struct SheetInfo
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public SheetInfo(public var title: String, public var action: () -> Unit, public var icon!: Option<AppResource> = Option.None)
```

- APILevel:16
- params:
  - title: item title
  - action: click callback
  - icon: optional icon resource, default None

## Confirm
```
public struct Confirm
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public Confirm(public var value: String, public var action: () -> Unit, public var enabled!: Bool = true, public var defaultFocus!: Bool = false, public var style!: DialogButtonStyle = DialogButtonStyle.DEFAULT)
```

- APILevel:16
- params:
  - value:button text
  - action: click callback
  - enabled: whether available, default true
  - defaultFocus: whether default focus, default false
  - style:buttonstyle，default DEFAULT

## EdgeStyle
```
public struct EdgeStyle
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public EdgeStyle(public var top: BorderStyle, public var right: BorderStyle, public var bottom: BorderStyle, public var left: BorderStyle)
```

- APILevel:16
- params:
  - top / right / bottom / left: style for each edge, BorderStyle enum

## show
```
public static func show(options: ActionSheetOptions): Unit
```

- description:Shows an action sheet dialog configured by `options`.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - options: dialog option, ActionSheetOptions (includes title/message/sheets/confirm/alignment/offset/mask/background/border, etc.)

> The `ActionSheetOptions` struct is defined in this component's source file, encapsulating title, info, option items array (sheets: Array<SheetInfo>), confirm button, cancel callback, alignment mode, whether modal, etc. configuration. Also has a `show(options, shadow)` overload to specify shadow.
