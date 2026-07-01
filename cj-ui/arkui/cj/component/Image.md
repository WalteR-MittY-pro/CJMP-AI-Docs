# Image

Image component, displays local/network/PixelMap images.

---

## CJImageComplete
```
public struct CJImageComplete
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public CJImageComplete(public let width: Float64, public let height: Float64, public let componentWidth: Float64, public let componentHeight: Float64, public let loadingStatus: Int32, public let contentWidth: Float64, public let contentHeight: Float64, public let contentOffsetX: Float64, public let contentOffsetY: Float64)
```

- APILevel:16
- params:
  - width:image original width
  - height:imageoriginalheight
  - componentWidth:componentwidth
  - componentHeight:componentheight
  - loadingStatus: loading state
  - contentWidth / contentHeight: content width and height
  - contentOffsetX / contentOffsetY: content offset

## CJImageError
```
public struct CJImageError
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public CJImageError(public let componentWidth: Float64, public let componentHeight: Float64, public let message: String)
```

- APILevel:16
- params:
  - componentWidth:componentwidth
  - componentHeight:componentheight
  - message:errormessage

## ColorFilter
```
public class ColorFilter
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(array: Array<Float32>)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - array: color matrix of length 20

## init
```
public init(src: String)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src: image path or URL

```
public init(src: AppResource)
```

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
public init(src: ImageContent)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src: placeholder content, ImageContent enum

## alt
```
public func alt(src: String): This
```

- description:Sets the placeholder image displayed while the main image is loading (or fails to load) to the local path `src`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src:placeholdergraphpath
- return:This

```
public func alt(src: AppResource): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - src:placeholdergraphresourcereference
- return:This

## objectFit
```
public func objectFit(objectFit: ImageFit): This
```

- description:Sets how the image is resized to fit the component to `objectFit` (`ImageFit` enum: `Contain`/`Cover`/`Fill`/`None`/`ScaleDown`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - objectFit: zoom mode, ImageFit enum
- return:This

## objectRepeat
```
public func objectRepeat(objectRepeat: ImageRepeat): This
```

- description:Sets the image tile-repeat mode to `objectRepeat` (`ImageRepeat` enum: `NoRepeat`/`X`/`Y`/`XY`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - objectRepeat: repeat mode, ImageRepeat enum
- return:This

## interpolation
```
public func interpolation(interpolation: ImageInterpolation): This
```

- description:Sets the image interpolation (resampling) mode to `interpolation` (`ImageInterpolation` enum: e.g. `None`/`Low`/`Medium`/`High`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - interpolation: interpolation mode, ImageInterpolation enum
- return:This

## renderMode
```
public func renderMode(renderMode: ImageRenderMode): This
```

- description:Sets the image render mode to `renderMode` (`ImageRenderMode` enum: `Original`/`Template`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - renderMode:rendermode，ImageRenderMode enum
- return:This

## sourceSize
```
public func sourceSize(width: Length, height: Length): This
```

- description:Sets the decoded source image size to `width` x `height` (Length type), used for downsampling. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width: source width
  - height: source height
- return:This

## syncLoad
```
public func syncLoad(syncLoad: Bool): This
```

- description:Sets whether the image loads synchronously. When `syncLoad` is `true` loading blocks the UI thread; when `false` it loads asynchronously. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - syncLoad: whether to load synchronously
- return:This

## fillColor
```
public func fillColor(value: ResourceColor): This
```

- description:Sets the image fill (tint) color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: fill color
- return:This

## autoResize
```
public func autoResize(autoResize: Bool): This
```

- description:Sets whether the image is auto-resized to the component dimensions. When `autoResize` is `true` the decoded image is resized; when `false` it is not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - autoResize: whether to auto resize
- return:This

## matchTextDirection
```
public func matchTextDirection(isMatchTextDirection: Bool): This
```

- description:Sets whether the image matches the layout text direction (RTL/LTR). When `isMatchTextDirection` is `true` the image is mirrored in RTL; when `false` it is not. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - isMatchTextDirection: whether to match
- return:This

## fitOriginalSize
```
public func fitOriginalSize(isFitOriginalSize: Bool): This
```

- description:Sets whether the image decodes at its original size (skipping downsampling). When `isFitOriginalSize` is `true` the original size is used; when `false` it is downsampled. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - isFitOriginalSize: whether to fit original size
- return:This

## colorFilter
```
public func colorFilter(value: ColorFilter): This
```

- description:Sets the image color filter to `value` (a `ColorFilter`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: color filter, ColorFilter
- return:This

## dynamicRangeMode
```
public func dynamicRangeMode(value: DynamicRangeMode): This
```

- description:Sets the image dynamic range (HDR/SDR) mode to `value` (`DynamicRangeMode` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: dynamic range mode, DynamicRangeMode enum
- return:This

## copyOption
```
public func copyOption(value: CopyOptions): This
```

- description:Sets whether and how the image can be copied to `value` (`CopyOptions` enum: `None`/`InApp`/`LocalDevice`/`CrossDevice`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:copy option, CopyOptions enum
- return:This

## draggable
```
public func draggable(value: Bool): This
```

- description:Enables or disables drag-to-copy behaviour. When `value` is `true` the image can be dragged to the clipboard; when `false` it cannot. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:whether draggable
- return:This

## onComplete
```
public func onComplete(callback: (CJImageComplete) -> Unit): This
```

- description:Registers the complete callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
  - CJImageComplete: loading result
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
  - CJImageError:errorinfo
- return:This

## onFinish
```
public func onFinish(callback: () -> Unit): This
```

- description:Registers the finish callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## ImageContent
```
public enum ImageContent
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - EMPTY: empty content

## DynamicRangeMode
```
public enum DynamicRangeMode
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- enum:
  - HIGH
  - CONSTRAINT
  - STANDARD
