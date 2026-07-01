# Animation parameters (cj_animate_param)

Animation API parameter struct and callback-type enum used by `animateTo` etc.

---

## AnimateParam
```
public struct AnimateParam
```

Parameter struct passed to `animateTo(animation: AnimateParam, callback: () -> Unit)`.

### Fields
- duration:Option<Int32>
- tempo:Option<Float32>
- curve:Option<Curve>
- delay:Option<Int32>
- iterations:Option<Int32>
- playMode:Option<PlayMode>
- onFinish:Option<() -> Unit>
- finishCallbackType:Option<FinishCallbackType>
- expectedFrameRateRange:Option<ExpectedFrameRateRange>

### API

#### init
```
public init(
    duration!: Option<Int32> = 1000,
    tempo!: Option<Float32> = 1.0,
    curve!: Option<Curve> = Curve.EaseInOut,
    delay!: Option<Int32> = 0,
    iterations!: Option<Int32> = 1,
    playMode!: Option<PlayMode> = PlayMode.Normal,
    onFinish!: Option<() -> Unit> = Option.None,
    finishCallbackType!: Option<FinishCallbackType> = FinishCallbackType.REMOVED,
    expectedFrameRateRange!: Option<ExpectedFrameRateRange> = Option.None
)
```

- description:Constructs an AnimateParam. `duration` animation duration in ms (default 1000), `tempo` playback rate (default 1.0), `curve` easing curve (default `Curve.EaseInOut`), `delay` start delay in ms (default 0), `iterations` number of iterations (default 1), `playMode` play mode (default `PlayMode.Normal`), `onFinish` completion callback (default None), `finishCallbackType` when the finish callback fires (default `REMOVED`), `expectedFrameRateRange` expected frame-rate range (default None).

---

## ExpectedFrameRateRange
```
public struct ExpectedFrameRateRange
```

Expected frame-rate range used to drive the animation at a target rate.

### Fields
- min:Int32
- max:Int32
- expected:Int32

### API

#### init
```
public ExpectedFrameRateRange(
    public var min!: Int32,
    public var max!: Int32,
    public var expected!: Int32
)
```

- description:Constructs an ExpectedFrameRateRange with the given `min`, `max` and `expected` frame rates.

---

## FinishCallbackType
```
public enum FinishCallbackType
```

When the `onFinish` callback of `AnimateParam` is invoked.

- Enum Values:REMOVED | LOGICALLY
