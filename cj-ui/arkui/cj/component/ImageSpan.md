# ImageSpan

Image fragment component, used as Text child content to insert images in text rows.

---

## ImageLoadResult
```
public struct ImageLoadResult
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public ImageLoadResult(public var width: Float64, public var height: Float64, public var componentWidth: Float64, public var componentHeight: Float64, public var loadingStatus: Int64, public var contentWidth: Float64, public var contentHeight: Float64, public var contentOffsetX: Float64, public var contentOffsetY: Float64)
```

- APILevel:16
- params:
  - width:image original width
  - height:imageoriginalheight
  - componentWidth:componentwidth
  - componentHeight:componentheight
  - loadingStatus: loading state
  - contentWidth: content width
  - contentHeight: content height
  - contentOffsetX: content X offset
  - contentOffsetY: content Y offset

## init
```
public init(src: AppResource)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src:image resource reference

```
public init(src: PixelMap)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src: PixelMap object

```
public init(src: String)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src: image path or URL

## alt
```
public func alt(value: PixelMap): This
```

- description:Sets the placeholder image displayed while the main image is loading (or fails to load) to the `value` `PixelMap`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:placeholder PixelMap
- return:This

## verticalAlign
```
public func verticalAlign(value: ImageSpanAlignment): This
```

- description:Sets the image span vertical alignment to `value` (`ImageSpanAlignment` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:verticalalignment，ImageSpanAlignment enum
- return:This

## objectFit
```
public func objectFit(value: ImageFit): This
```

- description:Sets how the image span is resized to fit to `value` (`ImageFit` enum: `Contain`/`Cover`/`Fill`/`None`/`ScaleDown`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:zoommode，ImageFit enum
- return:This

## textBackgroundStyle
```
public func textBackgroundStyle(color!: ResourceColor = Color.TRANSPARENT, radius!: Length = 0.vp): This
```

- description:Sets the image span text background style: `color` (default `Color.TRANSPARENT`) and `radius` (default `0.vp` Length or `BorderRadiuses`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:background color, default transparent
  - radius:corner radius，default 0vp
- return:This

```
public func textBackgroundStyle(color!: ResourceColor = Color.TRANSPARENT, radius!: BorderRadiuses): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - color:background color, default transparent
  - radius: four-corner radius, BorderRadiuses
- return:This

## colorFilter
```
public func colorFilter(filter: ColorFilter): This
```

- description:Sets the image span color filter to `filter` (a `ColorFilter`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - filter: color filter, ColorFilter
- return:This

## onComplete
```
public func onComplete(callback: (ImageLoadResult) -> Unit): This
```

- description:Registers the complete callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - ImageLoadResult: loading result
- return:This

## onError
```
public func onError(callback: (CJImageError) -> Unit): This
```

- description:Registers the error callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - CJImageError: error info (including component width, height, and message)
- return:This
