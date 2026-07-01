# TextClock

Text clock component that displays real-time according to a specified format.

---

## DateTimeOptions
```
public struct DateTimeOptions
```


## TextClockConfiguration
```
public struct TextClockConfiguration
```


## TextClockOptions
```
public struct TextClockOptions
```


## TextClockController
```
public class TextClockController <: RemoteData
```

- method:`start()` / `stop()` — start/stop

## TextClock
```
public class TextClock <: ViewBase
```


### init

```
public init(options: TextClockOptions = ...)
```

- description:Constructs an instance with the given parameters.
### method (chainable, returns This)
- `format(value)` — time format string
- `onDateChange(callback)` — date change callback
- `onTextAreaValueChange(...)` etc.
