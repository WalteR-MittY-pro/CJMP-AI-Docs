# Swiper

Carousel container, child elements can slide to switch, supports auto-play, indicator, loop, custom animation effects, etc.

---

## Indicator
```
public open class Indicator
```


### dot

```
public static func dot(): DotIndicator
```

- description:Returns a `DotIndicator` configuration (dot-style indicator) for use with the Swiper.
### digit

```
public static func digit(): DigitIndicator
```

- description:Returns a `DigitIndicator` configuration (digit-style indicator) for use with the Swiper.
### left

```
public func left(value: Length): This
```

- description:Sets the left margin of the dot indicator (gap from the Swiper's left edge). Returns `This` for chaining.
### top

```
public func top(value: Length): This
```

- description:Sets the top margin of the dot indicator (gap from the Swiper's top edge). Returns `This` for chaining.
### right

```
public func right(value: Length): This
```

- description:Sets the right margin of the dot indicator (gap from the Swiper's right edge). Returns `This` for chaining.
### bottom

```
public func bottom(value: Length): This
```

- description:Sets the bottom margin of the dot indicator (gap from the Swiper's bottom edge). Returns `This` for chaining.
### start

```
public func start(value: Length): This
```

- description:Sets the start (leading) margin of the dot indicator (respects layout direction). Returns `This` for chaining.
### end

```
public func end(value: Length): This
```

- description:Sets the end (trailing) margin of the dot indicator (respects layout direction). Returns `This` for chaining.
## DotIndicator
```
public class DotIndicator <: Indicator
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### itemWidth

```
public func itemWidth(value: Length): This
```

- description:Sets the width of each child page (dot indicator item) to `value` (Length type). Returns `This` for chaining.
### itemHeight

```
public func itemHeight(value: Length): This
```

- description:Sets the height of each child page (dot indicator item) to `value` (Length type). Returns `This` for chaining.
### selectedItemWidth

```
public func selectedItemWidth(value: Length): This
```

- description:Sets the width of the currently selected dot indicator item to `value` (Length type). Returns `This` for chaining.
### selectedItemHeight

```
public func selectedItemHeight(value: Length): This
```

- description:Sets the height of the currently selected dot indicator item to `value` (Length type). Returns `This` for chaining.
### mask

```
public func mask(value: Bool): This
```

- description:Sets whether the dot indicator uses a mask (dimming) effect. When `value` is `true` non-selected dots are dimmed. Returns `This` for chaining.
### color

```
public func color(value: ResourceColor): This
```

- description:Sets the color of non-selected dots to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
### selectedColor

```
public func selectedColor(value: ResourceColor): This
```

- description:Sets the color of the currently selected dot to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
### maxDisplayCount

```
public func maxDisplayCount(value: UInt32): This
```

- description:Sets the maximum number of dot indicators displayed to `value` (UInt32). Returns `This` for chaining.
## FontOptions
```
public class FontOptions
```


### init

```
public init(size!: Length = 14.vp, weight!: FontWeight = FontWeight.Normal)
```

- description:Constructs an instance with the given parameters.
- params:
  - size:font size，default 14vp
  - weight:font weight, default Normal

## DigitIndicator
```
public class DigitIndicator <: Indicator
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### fontColor

```
public func fontColor(value: ResourceColor): This
```

- description:Sets the digit indicator font color (non-selected) to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
### selectedFontColor

```
public func selectedFontColor(value: ResourceColor): This
```

- description:Sets the digit indicator font color for the selected page to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
### digitFont

```
public func digitFont(value: FontOptions): This
```

- description:Sets the digit indicator font to `value` (`FontOptions`: size and weight). Returns `This` for chaining.
### selectedDigitFont

```
public func selectedDigitFont(value: FontOptions): This
```

- description:Sets the digit indicator font for the selected page to `value` (`FontOptions`: size and weight). Returns `This` for chaining.
## SwiperAutoFill
```
public struct SwiperAutoFill
```


### init

```
public init(minSize: Float64)
```

- description:Constructs an instance with the given parameters.
- params:
  - minSize: single page minimum size

```
public init(minSize: Int64)
```

- params:
  - minSize: single page minimum size

## ArrowStyle
```
public struct ArrowStyle
```


### init

```
public init(showBackground!: Bool = false, isSidebarMiddle!: Bool = false, backgroundSize!: Length = 24.vp, backgroundColor!: ResourceColor = Color(0x00000000), arrowSize!: Length = 18.vp, arrowColor!: ResourceColor = Color(0x182431))
```

- description:Constructs an instance with the given parameters.
- params:
  - showBackground: whether to show background, default false
  - isSidebarMiddle: whether centered, default false
  - backgroundSize: background size, default 24vp
  - backgroundColor: background color
  - arrowSize: arrow size, default 18vp
  - arrowColor: arrow color

## SwiperController
```
public class SwiperController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### showNext

```
public func showNext(): Unit
```

- description:Swipes to the next child page.
### showPrevious

```
public func showPrevious(): Unit
```

- description:Swipes to the previous child page.
### changeIndex

```
public func changeIndex(index: Int32, useAnimation: Bool): Unit
```

- description:Switches to the child page at `index`, animating the transition when `useAnimation` is `true`.
- params:
  - index:targetindex
  - useAnimation: whether to use animation

### finishAnimation

```
public func finishAnimation(): Unit
```

- description:Skips any in-progress swiping animation and jumps directly to the target page.
## init
```
public init(controller: SwiperController, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - controller:controller
  - child:child content builder function

## index
```
public func index(index: UInt32): This
```

- description:Sets the index of the currently displayed child page to `index`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## autoPlay
```
public func autoPlay(autoPlay: Bool): This
```

- description:Sets whether the Swiper auto-plays. When `autoPlay` is `true` pages advance automatically; when `false` they do not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## loop
```
public func loop(loop: Bool): This
```

- description:Sets whether playback loops. When `loop` is `true` the Swiper restarts from the first page after the last; when `false` it stops. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## duration
```
public func duration(duration: UInt32): This
```

- description:Sets the duration of the swipe animation to `duration` milliseconds. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## interval
```
public func interval(interval: UInt32): This
```

- description:Sets the auto-play interval to `interval` milliseconds. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## vertical
```
public func vertical(isVertical: Bool): This
```

- description:Sets whether the Swiper scrolls vertically. When `isVertical` is `true` pages swipe top-to-bottom; when `false` (default) they swipe left-to-right. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## indicator
```
public func indicator(showIndicator: Bool): This
```

- description:Sets whether the indicator is shown. When `showIndicator` is `true` the indicator is displayed; when `false` it is hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func indicator(indicator: Indicator): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## itemSpace
```
public func itemSpace(itemSpace: Length): This
```

- description:Sets the spacing between adjacent child pages to `itemSpace` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## displayMode
```
public func displayMode(mode: SwiperDisplayMode): This
```

- description:Sets the Swiper display mode to `mode` (`SwiperDisplayMode` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## cachedCount
```
public func cachedCount(value: Int32): This
```

- description:Sets the number of child pages cached on either side to `value` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## disableSwipe
```
public func disableSwipe(disable: Bool): This
```

- description:Sets whether swipe gestures are disabled. When `disable` is `true` swipe gestures are blocked; when `false` they are enabled. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## curve
```
public func curve(curve: Curve): This
```

- description:Sets the animation curve for swipe transitions to `curve` (`Curve` enum, e.g. `Linear`/`EaseIn`/`EaseOut`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## nextMargin
```
public func nextMargin(value: Length, ignoreBlank!: Bool = false): This
```

- description:Sets the margin exposed after the last child page to `value` (Length type); `ignoreBlank` (default `false`) controls whether blank space is shown when not enough pages. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## prevMargin
```
public func prevMargin(value: Length, ignoreBlank!: Bool = false): This
```

- description:Sets the margin exposed before the first child page to `value` (Length type); `ignoreBlank` (default `false`) controls whether blank space is shown when not enough pages. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## nestedScroll
```
public func nestedScroll(value: SwiperNestedScrollMode): This
```

- description:Sets the nested-scroll behavior to `value` (`SwiperNestedScrollMode` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## indicatorInteractive
```
public func indicatorInteractive(value: Bool): This
```

- description:Sets whether the indicator is interactive. When `value` is `true` tapping the indicator switches pages; when `false` it does not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## displayArrow
```
public func displayArrow(value: Bool, isHoverShow!: Bool = false): This
```

- description:Sets whether the navigation arrows are displayed. When `value` is `true` the arrows are shown (or styled by `ArrowStyle`); `isHoverShow` (default `false`) shows arrows only on hover. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

```
public func displayArrow(value: ArrowStyle, isHoverShow!: Bool = false): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onChange
```
public func onChange(callback: (Int32) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Int32: current page index
- return:This

## onAnimationStart
```
public func onAnimationStart(callback: (Int32, Int32) -> Unit): This
```

- description:Registers the animation start callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onAnimationEnd
```
public func onAnimationEnd(callback: (Int32, Int32) -> Unit): This
```

- description:Registers the animation end callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onGestureSwipe
```
public func onGestureSwipe(callback: (Int32, Float64) -> Unit): This
```

- description:Registers the gesture swipe callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## onContentDidScroll
```
public func onContentDidScroll(callback: (Int32, Float64) -> Unit): This
```

- description:Registers the content did scroll callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This

## customContentTransition
```
public func customContentTransition(timeout: Int32, callback: ...): This
```

- description:Configures a custom content transition with `timeout` (Int32, transition timeout in ms) and `callback` (custom transition callback). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- return:This
