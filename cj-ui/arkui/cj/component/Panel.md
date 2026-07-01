# Panel

Drawer panel component, can slide from bottom, supports three height levels: half-screen/full-screen/mini.

> Note: panelType/mode/dragBar/fullHeight/halfHeight/miniHeight/show/showCloseIcon/backgroundMask/onChange/onHeightChange are annotated `deprecated: 12` in source, and the corresponding sections below are marked accordingly.

---

## init
```
public init(show: Bool, content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - show:initialwhether to show
  - content:child content builder function

## panelType（deprecated）
```
public func panelType(ty: PanelType): This
```

- description:Sets the panel type to `ty` (`PanelType` enum: `Min`/`Fold`/`HalfExpand`/`Full`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - ty: panel type, PanelType enum
- return:This

## mode（deprecated）
```
public func mode(mode: PanelMode): This
```

- description:Sets the panel's current display mode to `mode` (`PanelMode` enum: `Min`/`Fold`/`HalfExpand`/`Full`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - mode: panel mode, PanelMode enum
- return:This

## dragBar（deprecated）
```
public func dragBar(hasDragBar: Bool): This
```

- description:Sets whether the drag bar is shown. When `hasDragBar` is `true` the drag bar is displayed; when `false` it is hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - hasDragBar:whether to show
- return:This

## fullHeight（deprecated）
```
public func fullHeight(value: Length): This
```

- description:Sets the panel height in the fully-expanded state to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:full-screenheight
- return:This

## halfHeight（deprecated）
```
public func halfHeight(value: Length): This
```

- description:Sets the panel height in the half-expanded state to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:half-screenheight
- return:This

## miniHeight（deprecated）
```
public func miniHeight(value: Length): This
```

- description:Sets the panel height in the minimized state to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:mini height
- return:This

## show（deprecated）
```
public func show(value: Bool): This
```

- description:Sets whether the panel is shown. When `value` is `true` the panel slides in; when `false` it slides out. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether to show
- return:This

## showCloseIcon（deprecated）
```
public func showCloseIcon(value: Bool): This
```

- description:Sets whether the panel close icon is shown. When `value` is `true` the close icon is displayed; when `false` it is hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether to show
- return:This

## backgroundMask（deprecated）
```
public func backgroundMask(value: ResourceColor): This
```

- description:Sets the panel background mask color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: mask color
- return:This

## onChange（deprecated）
```
public func onChange(callback: (Float64, Float64, PanelMode) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Float64:width
  - Float64:height
  - PanelMode:currentmode
- return:This

## onHeightChange（deprecated）
```
public func onHeightChange(callback: (Float64) -> Unit): This
```

- description:Registers the height change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Float64:currentheight
- return:This

## backgroundColor
```
public func backgroundColor(color: ResourceColor): This
```

- description:Sets the panel background color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:background color
- return:This

## borderWidth
```
public func borderWidth(width: Length): This
```

- description:Sets the panel border width to `width` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:borderwidth
- return:This

## borderColor
```
public func borderColor(color: ResourceColor): This
```

- description:Sets the panel border color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:bordercolor
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```

- description:Sets the panel border corner radius to `radius` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - radius:corner radius
- return:This

## borderStyle
```
public func borderStyle(style: BorderStyle): This
```

- description:Sets the panel border style to `style` (`BorderStyle` enum: `Solid`/`Dashed`/`Dotted`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - style:borderstyle，BorderStyle enum
- return:This
