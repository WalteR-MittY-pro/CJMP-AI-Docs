# ProgressMask

public class ProgressMask <: RemoteData

Progress mask, used to overlay a circular progress mask on a component (e.g. video buffering).

## API

### init
```
public init(value!: Float32, total!: Float32, color!: Color)
```

- description:Constructs a ProgressMask with the current `value`, the `total` value representing 100% progress, and the progress-arc `color`. Registers the instance with the RemoteDataManager.

### updateProgress
```
public func updateProgress(number: Float32): Unit
```

- description:Updates the current progress `number` of the mask.

### updateColor
```
public func updateColor(color: Color): Unit
```

- description:Updates the progress-arc `color` of the mask.

### enableBreathingAnimation
```
public func enableBreathingAnimation(value: Bool): Unit
```

- description:Enables or disables the breathing (idle) animation of the mask according to `value`.
