# ImageAnimator

Frame animation component; plays a set of image frames in sequence.

---

## ImageFrameInfo
```
public struct ImageFrameInfo
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public init(src!: String, duration!: Int32 = 0, width!: Length = 0.vp, height!: Length = 0.vp, top!: Length = 0.vp, left!: Length = 0.vp)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- params:
  - src:imagepath
  - duration: duration of this frame (ms), default 0
  - width: frame width, default 0vp
  - height: frame height, default 0vp
  - top: top offset, default 0vp
  - left: left-side offset, default 0vp

> Also has `src: AppResource` resource overload，identical behavior。

## init
```
public init()
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## images
```
public func images(images: Array<ImageFrameInfo>): This
```

- description:Sets the animation's frame image list to `images` (an array of `ImageFrameInfo` describing each frame's source, dimensions and offset). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - images: frame info array
- return:This

## state
```
public func state(value: AnimationStatus): This
```

- description:Sets the animator's playback state to `value` (`AnimationStatus` enum: `Initial`/`Running`/`Paused`/`Stopped`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:state，AnimationStatus enum
- return:This

## duration
```
public func duration(value: Int32): This
```

- description:Sets the total duration of one animation cycle to `value` milliseconds. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: duration
- return:This

## reverse
```
public func reverse(isReverse: Bool): This
```

- description:Sets whether the animation plays in reverse. When `isReverse` is `true` frames are played from last to first; when `false` (default) they play first to last. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - isReverse: whether to play in reverse
- return:This

## fixedSize
```
public func fixedSize(value: Bool): This
```

- description:Sets whether the image animator uses a fixed size. When `value` is `true` the size is fixed; when `false` it adapts to the content. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: whether fixed size
- return:This

## preDecode（deprecated）
```
public func preDecode(value: Int32): This
```

- description:Sets the number of frames to pre-decode to `value` (Int32). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value: pre-decode count
- return:This

## fillMode
```
public func fillMode(value: FillMode): This
```

- description:Sets the animator fill mode to `value` (`FillMode` enum). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:fillmode，FillMode enum
- return:This

## iterations
```
public func iterations(iterations: Int32): This
```

- description:Sets the number of playback iterations to `iterations`. `-1` means loop indefinitely; `1` (default) plays once. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - iterations: iteration count
- return:This

## onStart
```
public func onStart(callback: () -> Unit): This
```

- description:Registers the start callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## onPause
```
public func onPause(callback: () -> Unit): This
```

- description:Registers the pause callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## onRepeat
```
public func onRepeat(callback: () -> Unit): This
```

- description:Registers the repeat callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## onCancel
```
public func onCancel(callback: () -> Unit): This
```

- description:Registers the cancel callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
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
