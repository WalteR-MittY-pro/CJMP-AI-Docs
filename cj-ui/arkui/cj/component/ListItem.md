# ListItem

List item component, used as child content for List, supports selected, swipe operations, etc.

---

## ListItemOptions
```
public class ListItemOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(style!: ListItemStyle = ListItemStyle.NONE)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - style:style，default NONE

## init
```
public init(deepRender: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - deepRender: lazy loading builder function

```
public init(value: ListItemOptions, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:option
  - child:child content builder function

## sticky（deprecated）
```
public func sticky(sticky: Sticky): This
```

- description:Sets the ListItem's sticky behaviour to `sticky` (`Sticky` enum: `None`/`Header`/`Footer`). When set, the item sticks to the top/bottom of the viewport while scrolling. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - sticky:snaptype，Sticky enum
- return:This

## editable（deprecated）
```
public func editable(flag: Bool): This
```

- description:Sets whether the ListItem is editable. When `flag` is `true` the item can enter edit mode (swipe-to-edit). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - flag: whether editable
- return:This

## selectable
```
public func selectable(flag: Bool): This
```

- description:Sets whether the ListItem can be selected. When `flag` is `true` the item responds to selection gestures; when `false` it does not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - flag: whether selectable
- return:This

## selected
```
public func selected(flag: Bool): This
```

- description:Sets whether the ListItem is currently selected. When `flag` is `true` the item renders in its selected state. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - flag:whether selected
- return:This

## swipeAction
```
public func swipeAction(start!: () -> Unit = {=>}, end!: () -> Unit = {=>}, edgeEffect!: SwipeEdgeEffect = SwipeEdgeEffect.Spring, onOffsetChange!: (Float64) -> Unit = { offset: Float64 =>}): This
```

- description:Configures the swipe-to-reveal actions: `start` (default no-op) for swipe-left content, `end` (default no-op) for swipe-right content, `edgeEffect` (default `Spring`) for edge animation, and `onOffsetChange` (default no-op) for offset change callbacks. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - start: start side (swipe left) content builder function
  - end: end side (swipe right) content builder function
  - edgeEffect:edgeanimation effect，default Spring
  - onOffsetChange: swipe offset change callback
- return:This

## onSelect
```
public func onSelect(callback: (Bool) -> Unit): This
```

- description:Registers the select callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Bool:whether selected
- return:This

## ListItemStyle
```
public enum ListItemStyle
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - NONE:no special style
  - CARD: card style
