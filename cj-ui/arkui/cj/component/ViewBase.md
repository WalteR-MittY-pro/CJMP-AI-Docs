# ViewBase

The root base class for all components, provides common size/border/background/position/event/transform and other property methods for all components. Users do not instantiate it directly, but the methods below are inherited by all components and can be called in a chainable manner on any component.

> Note:This base class is not annotated with `@APILevel` metadata in source. This is internal infrastructure.

---

## ColorMetrics
```
public class ColorMetrics
```

Internal color representation used by `ViewBase` for color-related properties. Holds RGBA components (red/green/blue as `UInt8`, alpha as `UInt8`). All fields are private; instances are created via the static factories below.

### toUInt32

```
public func toUInt32(): UInt32
```

- description:Packs the RGBA components into a single `UInt32` as `0xAARRGGBB` and returns it.
- return:UInt32

### numeric

```
public static func numeric(value: UInt32): ColorMetrics
```

- description:Constructs a ColorMetrics from a packed `UInt32` of the form `0xAARRGGBB`. If the alpha byte is 0 the result is treated as fully opaque (alpha = 0xff).
- return:ColorMetrics

### rgba

```
public static func rgba(red: UInt8, green: UInt8, blue: UInt8, alpha!: Float32 = MAX_ALPHA_VALUE): ColorMetrics
```

- description:Constructs a ColorMetrics from the given `red`/`green`/`blue` byte components and a floating-point `alpha` in [0.0, 1.0] (default `MAX_ALPHA_VALUE` = 1.0). The alpha is clamped and scaled to a byte.
- return:ColorMetrics

### resourceColor

```
public static func resourceColor(color: Color): ColorMetrics
public static func resourceColor(color: UInt32): ColorMetrics
public static func resourceColor(color: String): ColorMetrics
public static func resourceColor(color: AppResource): ColorMetrics
```

- description:Constructs a ColorMetrics from a polymorphic color source: a `Color`, a packed `UInt32`, a CSS-style `String` (hex / `rgb(...)` / `rgba(...)`), or an `AppResource` resolved via `getResourceColor`.
- return:ColorMetrics

## constant
- `MAX_CHANNEL_VALUE: UInt8 = 0xff` — single channel max value
- `MAX_ALPHA_VALUE: Float32 = 1.0` — alpha max value

## Common methods (inherited by all components)
The following methods are defined in ViewBase, and any component can call them in a chainable manner; signatures are in the form `public func xxx(...): This`, returning This to support chaining:

### Size
- `width(value: Length): This` — width
- `height(value: Length): This` — height
- `size(width!: Length, height!: Length): This` — width and height
- `aspectRatio(ratio: Float32, ...): This` — width to height ratio
- `constraintSize(...): This` — constraint size

### spacing
- `padding(value: Length): This` / `padding(...)` — padding
- `margin(value: Length): This` / `margin(...)` — outer margin

### border
- `border(width: Length, color: ResourceColor, radius: Length, style: BorderStyle): This` — border
- `borderWidth(width: Length) / borderWidth(edgeWidths: EdgeWidths): This` — border width
- `borderColor(color: ResourceColor): This` — border color
- `borderRadius(radius: Length) / borderRadius(...)`: This — corner radius
- `borderStyle(style: BorderStyle): This` — border style
- `outline(...)`: This — outline

### Background and foreground
- `backgroundColor(color: ResourceColor): This` — background color
- `backgroundImage(...)`: This — background image
- `foregroundColor(color: ResourceColor): This` — foreground color

### Position and z-order
- `position(x: Length, y: Length): This` — absolute positioning
- `offset(x: Length, y: Length): This` — offset
- `zIndex(value: Int32): This` — z-order

### Transform and visibility
- `opacity(value: Float64): This` — opacity
- `visibility(value: Visibility): This` — visibility
- `rotate(...) / scale(...) / translate(...) / transform(...): This` — transform
- `mirror(...): This` — mirror

### event
- `onClick(callback: (ClickEvent) -> Unit): This` — click
- `onTouch(callback: (TouchEvent) -> Unit): This` — touch
- `onHover(callback: (Bool) -> Unit): This` / `onMouseEvent(...)`: This — hover/mouse
- `onKeyEvent(...) / onFocusChange(...) / onBlur(...) / onFocus(...)`: This — focus/key
- `onAppear(...) / onDisAppear(...)`: This — mount/unmount

### Other
- `id(value: String): This` — component id
- `enabled(value: Bool): This` — whether enabled
- `focusable(value: Bool): This` — whether focusable
- `clip(value: Bool): This` — clip
- `gradient(...) / backdropBlur(...) / shadow(...)`: This — gradient/background blur/shadow
- `hitTestBehavior(value: HitTestMode): This` — touch test behavior
- `expandSafeArea(...)`: This` — extend safe area
- `markTouch(value: Bool): This` — mark touch

> Each component often overrides some of these methods to integrate its own FFI implementation; refer to the specific component documentation for details.
