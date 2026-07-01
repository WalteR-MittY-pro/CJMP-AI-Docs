# ScrollBar

Scroll bar container, provides a scroll bar for scrollable content, must be used with a Scroller controller.

---

## init
```
public init(scroller: Scroller, direction: ScrollBarDirection, state: BarState, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - scroller:scroll controller，Scroller
  - direction:scroll direction，ScrollBarDirection enum
  - state:displaystate，BarState enum
  - child:child content builder function

```
public init(scroller: Scroller, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - scroller:scroll controller
  - child:child content builder function

```
public init(scroller: Scroller, direction: ScrollBarDirection, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - scroller:scroll controller
  - direction:scroll direction
  - child:child content builder function

```
public init(scroller: Scroller, state: BarState, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - scroller:scroll controller
  - state:displaystate
  - child:child content builder function

## enableNestedScroll
```
public func enableNestedScroll(value: Bool): This
```

- description:Sets whether nested scrolling is enabled. When `value` is `true` nested scrolling is enabled; when `false` it is disabled. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether enabled
- return:This
