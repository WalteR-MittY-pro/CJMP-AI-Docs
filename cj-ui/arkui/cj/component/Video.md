# Video

Video player component, supports play control, fullscreen, loop, mute, etc.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## VideoController
```
public class VideoController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### start

```
public func start(): Unit
```

- description:Starts playback.
### pause

```
public func pause(): Unit
```

- description:Pauses playback.
### stop

```
public func stop(): Unit
```

- description:Stops playback.
### reset

```
public func reset(): Unit
```

- description:Resets the video to its initial state.
### setCurrentTime

```
public func setCurrentTime(time: Int32, seekMode: Int32): Unit
```

- description:Seeks to the target `time` (in milliseconds) using the given `seekMode`.
- params:
  - time:target time (ms)
  - seekMode:seek mode

### requestFullscreen

```
public func requestFullscreen(fullScreen: Bool): Unit
```

- description:Requests fullscreen playback when `fullScreen` is `true`, otherwise exits fullscreen.
- params:
  - fullScreen:whether fullscreen

### exitFullscreen

```
public func exitFullscreen(): Unit
```

- description:Exits fullscreen playback.
## init
```
public init(src: String, preview: String, controller: VideoController)
```

- description:Constructs an instance with the given parameters.
- params:
  - src:video source path
  - preview:preview image path
  - controller:video controller

## muted
```
public func muted(muted: Bool): This
```

- description:Sets whether the audio is muted. When `muted` is `true` audio output is suppressed; when `false` it plays at the system volume. Returns `This` for chaining.
- return:This

## autoPlay
```
public func autoPlay(autoPlay: Bool): This
```

- description:Sets whether the video starts playing automatically. When `autoPlay` is `true` playback begins on load; when `false` it waits for the user. Returns `This` for chaining.
- return:This

## controls
```
public func controls(controls: Bool): This
```

- description:Sets whether the default playback control bar is displayed. When `controls` is `true` the control bar is shown; when `false` it is hidden. Returns `This` for chaining.
- return:This

## objectFit
```
public func objectFit(objectFit: ImageFit): This
```

- description:Sets how the video content is resized to fit the component to `objectFit` (`ImageFit` enum: `Contain`/`Cover`/`Fill`/`None`/`ScaleDown`). Returns `This` for chaining.
- return:This

## loop
```
public func loop(loop: Bool): This
```

- description:Sets whether playback loops. When `loop` is `true` the video restarts from the beginning on reaching the end; when `false` it stops. Returns `This` for chaining.
- return:This

## enableAnalyzer
```
public func enableAnalyzer(enable: Bool): This
```

- description:Sets whether the video analyzer is enabled. When `enable` is `true` the analyzer runs; when `false` it does not. Returns `This` for chaining.
- return:This

## onStart
```
public func onStart(callback: () -> Unit): This
```

- description:Registers the start callback.
- return:This

## onPause
```
public func onPause(callback: () -> Unit): This
```

- description:Registers the pause callback.
- return:This

## onFinish
```
public func onFinish(callback: () -> Unit): This
```

- description:Registers the finish callback.
- return:This

## onError
```
public func onError(callback: () -> Unit): This
```

- description:Registers the error callback.
- return:This

## onStop
```
public func onStop(callback: () -> Unit): This
```

- description:Registers the stop callback.
- return:This

## onPrepared
```
public func onPrepared(callback: () -> Unit): This
```

- description:Registers the prepared callback.
- return:This

## onSeeking
```
public func onSeeking(callback: () -> Unit): This
```

- description:Registers the seeking callback.
- return:This

## onSeeked
```
public func onSeeked(callback: () -> Unit): This
```

- description:Registers the seeked callback.
- return:This

## onUpdate
```
public func onUpdate(callback: () -> Unit): This
```

- description:Registers the update callback.
- return:This

## onFullscreenChange
```
public func onFullscreenChange(callback: () -> Unit): This
```

- description:Registers the fullscreen change callback.
- return:This
