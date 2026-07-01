# Slider

Slider component, used to adjust progress or value within a given range.

---

## init
```
public init(min!: Float64 = 0.0, max!: Float64 = 100.0, step!: Float64 = 1.0, value!: Float64 = min, style!: SliderStyle = SliderStyle.OutSet, direction!: Axis = Axis.Horizontal, reverse!: Bool = false)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - min: minimum value, default 0.0
  - max: maximum value, default 100.0
  - step: slide step size, default 1.0
  - value: current value, defaults to `min`
  - style: slider block style (OutSet raised / InSet inset), default OutSet; for enum definitions see [cj_enum](./cj_enum.md#SliderStyle)
  - direction: slide direction (Horizontal / Vertical), default Horizontal
  - reverse: whether to reverse values, default false

## blockColor
```
public func blockColor(value: ResourceColor): This
```

- description:Sets the slider thumb (block) color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: slider block color, can be Color enum values, numeric value, or Resource reference
- return: This, supports chainable calls

## trackColor
```
public func trackColor(value: ResourceColor): This
```

- description:Sets the slider track background color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: track background color, same type as blockColor
- return:This

## selectedColor
```
public func selectedColor(value: ResourceColor): This
```

- description:Sets the color of the selected portion of the track to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: selected segment color, same type as blockColor
- return:This

## showSteps
```
public func showSteps(value: Bool): This
```

- description:Sets whether step tick marks are shown. When `value` is `true` the step marks are displayed; when `false` they are hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether to showscale
- return:This

## showTips
```
public func showTips(value: Bool, content!: ?String = None): This
```

- description:Sets whether a tooltip bubble is shown. When `value` is `true` the tooltip is displayed (showing the current value, or `content` when supplied, default `None`); when `false` it is hidden. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: whether to show tooltip bubble
  - content: optional custom tooltip text; when omitted, displays current numeric value
- return:This

## trackThickness
```
public func trackThickness(value: Length): This
```

- description:Sets the slider track thickness to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: track thickness, Length type (numeric value or resource)
- return:This

## maxLabel（deprecated）
```
public func maxLabel(value: Float64): This
```

- description:Sets the maximum value label to `value` (Float64). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: maximum value label
- return:This

## minLabel（deprecated）
```
public func minLabel(value: Float64): This
```

- description:Sets the minimum value label to `value` (Float64). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: minimum value label
- return:This

## onChange
```
public func onChange(callback: (Float64, SliderChangeMode) -> Unit): This
```

- description:Registers the change callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - Float64: current numeric value
  - SliderChangeMode: change mode enum (End / Moving / Start / Click); for definitions see [cj_enum](./cj_enum.md#SliderChangeMode)
- return:This

```
public func onChange(callback: () -> Unit): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## blockBorderColor
```
public func blockBorderColor(value: ResourceColor): This
```

- description:Sets the slider thumb (block) border color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:bordercolor
- return:This

## blockBorderWidth
```
public func blockBorderWidth(value: Length): This
```

- description:Sets the slider thumb (block) border width to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:borderwidth
- return:This

## blockSize
```
public func blockSize(width!: Length = 0.vp, height!: Length = 0.vp): This
```

- description:Sets the slider thumb (block) size to `width` x `height` (Length type, both default `0.vp`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width: slider block width, default 0vp
  - height: slider block height, default 0vp
- return:This

## minResponsiveDistance
```
public func minResponsiveDistance(value: Float32): This
```

- description:Sets the minimum drag distance before the slider responds to `value` (Float32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:minimum response distance
- return:This

```
public func minResponsiveDistance(value: Int64): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:minimum response distance
- return:This

## selectedBorderRadius
```
public func selectedBorderRadius(value: Length): This
```

- description:Sets the corner radius of the selected portion of the track to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:corner radius
- return:This

## sliderInteractionMode
```
public func sliderInteractionMode(value: SliderInteraction): This
```

- description:Sets the slider interaction mode to `value` (`SliderInteraction` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: interaction mode; for enum definitions see [SliderInteraction](#SliderInteraction)
- return:This

## slideRange
```
public func slideRange(from!: ?Float32 = None, to!: ?Float32 = None): This
```

- description:Restricts the slider to the [`from`, `to`] range. Both bounds are optional (default `None` = no limit). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - from: optional range lower bound, omitted means no limit
  - to: optional range upper bound, omitted means no limit
- return:This

```
public func slideRange(from!: ?Int64 = None, to!: ?Int64 = None): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - from: range lower bound, omitted means no limit
  - to: range upper bound, omitted means no limit
- return:This

## stepColor
```
public func stepColor(value: ResourceColor): This
```

- description:Sets the step tick mark color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:scalecolor
- return:This

## stepSize
```
public func stepSize(value: Length): This
```

- description:Sets the step tick mark size to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: scale mark size
- return:This

## trackBorderRadius
```
public func trackBorderRadius(value: Length): This
```

- description:Sets the slider track corner radius to `value` (Length type). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:corner radius
- return:This

## blockStyle
```
public func blockStyle(`type`: SliderBlockType, image!: String = "", shape!: ?ShapeAbstract = None): This
```

- description:Sets the slider thumb (block) style: `type` (`SliderBlockType`: `DEFAULT`/`IMAGE`/`SHAPE`), `image` (image path when `IMAGE`, default empty) and `shape` (shape object when `SHAPE`, default `None`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - type: slider block type (DEFAULT / IMAGE / SHAPE); for enum definitions see [SliderBlockType](#SliderBlockType)
  - image: image path when type is IMAGE, default empty string
  - shape: shape object when type is SHAPE, defaults to None
- return:This

```
public func blockStyle(`type`: SliderBlockType, image!: AppResource, shape!: ?ShapeAbstract = None): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - type: slider block type
  - image:image resource reference
  - shape: shape object, defaults to None
- return:This

---

## SliderInteraction
```
public enum SliderInteraction
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - SLIDE_AND_CLICK: both slide and click trigger
  - SLIDE_ONLY: only slide triggers
  - SLIDE_AND_CLICK_UP: slide triggers, click triggers on release

## SliderBlockType
```
public enum SliderBlockType
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - DEFAULT:defaultstyle
  - IMAGE:imagestyle
  - SHAPE:Shape customstyle
