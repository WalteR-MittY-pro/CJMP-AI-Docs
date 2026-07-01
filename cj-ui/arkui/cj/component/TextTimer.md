# TextTimer

Text timer component, supports forward/countdown and formatted display.

---

## TextTimerController
```
public class TextTimerController <: RemoteData
```

Controller used to start/pause/reset a `TextTimer`.

### API

#### init
```
public init()
```

- description:Constructs a TextTimerController and registers it with the RemoteDataManager.

#### start
```
public func start()
```

- description:Starts the timer.

#### pause
```
public func pause()
```

- description:Pauses the timer.

#### reset
```
public func reset()
```

- description:Resets the timer.

---

## TextTimer
```
public class TextTimer <: ViewBase
```

Text timer component.

### API

#### init
```
public init(
    isCountDown!: Bool = false,
    count!: Int64 = 60000,
    controller!: TextTimerController = TextTimerController()
)
```

- description:Constructs a TextTimer. `isCountDown` whether to count down (default false, i.e. count up), `count` the timer duration in ms used when counting down (default 60000), `controller` the controller used to start/pause/reset the timer (default a new `TextTimerController`).

#### format
```
public func format(value: String): This
```

- description:Sets the display format string, e.g. `HH:mm:ss.SS`. Returns `this` for chaining.
- return:This

#### onTimer
```
public func onTimer(callback: (Int64, Int64) -> Unit): This
```

- description:Registers the timer callback, invoked with `(elapsedTime, count)` where `elapsedTime` is the elapsed time in ms and `count` is the configured total count in ms. Returns `this` for chaining.
- return:This

#### fontSize
```
public func fontSize(value: Length): This
```

- description:Sets the timer text font size to `value` (Length type). Returns `this` for chaining.
- return:This

#### fontColor
```
public func fontColor(value: ResourceColor): This
```

- description:Sets the timer text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `this` for chaining.
- return:This
