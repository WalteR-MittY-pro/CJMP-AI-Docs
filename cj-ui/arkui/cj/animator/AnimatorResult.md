# AnimatorResult

public class AnimatorResult <: RemoteData

Animation player created from `AnimatorOptions`. Provides reset/play/finish/pause/cancel/reverse control and frame/finish/cancel/repeat callbacks.

---

## API

### init
```
public init(options: AnimatorOptions)
```

- description:Constructs an AnimatorResult from the given `options` and registers it with the RemoteDataManager.

### onframe
```
public mut prop onframe: (Float64) -> Unit
```

- description:Callback invoked on each animation frame with the current progress value. Assigning a callback registers it; reading returns the currently registered callback.

### onfinish
```
public mut prop onfinish: () -> Unit
```

- description:Callback invoked when the animation finishes. Assigning a callback registers it; reading returns the currently registered callback.

### oncancel
```
public mut prop oncancel: () -> Unit
```

- description:Callback invoked when the animation is cancelled. Assigning a callback registers it; reading returns the currently registered callback.

### onrepeat
```
public mut prop onrepeat: () -> Unit
```

- description:Callback invoked when the animation repeats. Assigning a callback registers it; reading returns the currently registered callback.

### reset
```
public func reset(options: AnimatorOptions): Unit
```

- description:Resets this animator with new `options`. Throws `BusinessException` on internal error.

### play
```
public func play(): Unit
```

- description:Starts/resumes playback. Throws `BusinessException` on internal error.

### finish
```
public func finish(): Unit
```

- description:Skips the animation to its end state. Throws `BusinessException` on internal error.

### pause
```
public func pause(): Unit
```

- description:Pauses playback. Throws `BusinessException` on internal error.

### cancel
```
public func cancel(): Unit
```

- description:Cancels playback. Throws `BusinessException` on internal error.

### reverse
```
public func reverse(): Unit
```

- description:Reverses the playback direction. Throws `BusinessException` on internal error.

### setExpectedFrameRateRange
```
public func setExpectedFrameRateRange(framerateRange: ExpectedFrameRateRange): Unit
```

- description:Sets the expected frame-rate range. The input is sanitised (must satisfy `min <= expected <= max`, all positive, all ≤ 144); out-of-range values fall back to `min=60, max=120, expected=60`. Throws `BusinessException` on internal error.

---

## Types

### AnimatorFill
```
public enum AnimatorFill
```

Fill mode of the animator (how styles are applied before start / after finish).

- Enum Values:None | Forwards | Backwards | Both

### AnimatorDirection
```
public enum AnimatorDirection
```

Playback direction of the animator.

- Enum Values:Normal | Reverse | Alternate | AlternateReverse

### AnimatorOptions
```
public struct AnimatorOptions
```

Options used to construct/reset an `AnimatorResult`.

#### Fields
- duration:Int32
- easing:String
- delay:Int32
- fill:AnimatorFill
- direction:AnimatorDirection
- iterations:Int32
- begin:Float64
- end:Float64

#### API

##### init
```
public AnimatorOptions(
    public let duration!: Int32 = 0,
    public let easing!: String = "ease",
    public let delay!: Int32 = 0,
    public let fill!: AnimatorFill = None,
    public let direction!: AnimatorDirection = Normal,
    public let iterations!: Int32 = 0,
    public let begin!: Float64 = 0.0,
    public let end!: Float64 = 1.0
)
```

- description:Constructs an AnimatorOptions. `duration` animation duration in ms (default 0), `easing` easing function name (default "ease"), `delay` start delay in ms (default 0), `fill` fill mode (default None), `direction` playback direction (default Normal), `iterations` number of iterations, 0 means infinite (default 0), `begin`/`end` progress range (default 0.0 / 1.0).
