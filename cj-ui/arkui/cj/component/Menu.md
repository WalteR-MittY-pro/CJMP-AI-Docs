# Menu

Menu container component, wraps MenuItem/MenuItemGroup, supports font, width, corner radius, divider, child menu expand mode, etc.

---

## init
```
public init(child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - child:child content builder function

## font
```
public func font(size: Length, weight: FontWeight, family: String, style: FontStyle): This
```

- description:Sets the menu font: `size` (font size), `weight` (font weight), `family` (font family) and `style` (font style). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## fontColor
```
public func fontColor(color: ResourceColor): This
```

- description:Sets the menu font color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## width
```
public func width(width: Length): This
```

- description:Sets the menu width to `width`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## borderRadius
```
public func borderRadius(radius: Length): This
```

- description:Sets the menu border corner radius to `radius` (Length type, or `BorderRadiuses` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func borderRadius(radius: BorderRadiuses): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## itemDivider
```
public func itemDivider(options: DividerOptions): This
```

- description:Sets the per-menu-item divider to `options` (`DividerOptions`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## itemGroupDivider
```
public func itemGroupDivider(options: DividerOptions): This
```

- description:Sets the per-menu-item-group divider to `options` (`DividerOptions`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## expandingMode
```
public func expandingMode(mode: SubMenuExpandingMode): This
```

- description:Sets the submenu expanding mode to `mode` (`SubMenuExpandingMode` enum: `SIDE_EXPAND`/`EMBEDDED_EXPAND`/`STACK_EXPAND`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - mode:expandmode，SubMenuExpandingMode enum
- return:This

## SubMenuExpandingMode
```
public enum SubMenuExpandingMode
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - SIDE_EXPAND: side expand
  - EMBEDDED_EXPAND: embedded expand
  - STACK_EXPAND: stacked expand
