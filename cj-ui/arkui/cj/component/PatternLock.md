# PatternLock

Pattern password lock component, users draw a pattern on a 3x3 dot matrix as a password.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## CircleStyleOptions
```
public struct CircleStyleOptions
```


### init

```
public init(color: Color, radius: Length, enableWaveEffect: Bool)
```

- description:Constructs an instance with the given parameters.
- params:
  - color:activatecolor
  - radius: dot radius
  - enableWaveEffect: whether to enable ripple effect

## PatternLockController
```
public class PatternLockController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### reset

```
public func reset(): Unit
```

- description:Clears the current pattern, returning the lock to its initial state.
### setChallengeResult

```
public func setChallengeResult(challengeResult: PatternLockChallengeResult): Unit
```

- description:Sets the pattern-lock challenge result to `challengeResult` (`PatternLockChallengeResult` enum).
- params:
  - challengeResult: validation result

## init
```
public init(controller: PatternLockController)
```

- description:Constructs an instance with the given parameters.
- params:
  - controller:controller

## activateCircleStyle
```
public func activateCircleStyle(options: CircleStyleOptions): This
```

- description:Sets the activated-dot circle style to `options` (`CircleStyleOptions`). Returns `This` for chaining.
- params:
  - options:styleoption
- return:This

## onDotConnect
```
public func onDotConnect(callback: () -> Unit): This
```

- description:Registers the dot connect callback.
- return:This

## onPatternComplete
```
public func onPatternComplete(callback: () -> Unit): This
```

- description:Registers the pattern complete callback.
- return:This

## selectedColor
```
public func selectedColor(color: ResourceColor): This
```

- description:Sets the color of selected (connected) dots to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## autoReset
```
public func autoReset(value: Bool): This
```

- description:Sets whether the pattern auto-resets after completion. When `value` is `true` the pattern clears automatically; when `false` it remains. Returns `This` for chaining.
- return:This

## pathColor
```
public func pathColor(color: ResourceColor): This
```

- description:Sets the connecting path color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## activeColor
```
public func activeColor(color: ResourceColor): This
```

- description:Sets the color of the active (currently being connected) dot to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## regularColor
```
public func regularColor(color: ResourceColor): This
```

- description:Sets the color of unselected (idle) dots to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## circleRadius
```
public func circleRadius(value: Length): This
```

- description:Sets the radius of each pattern dot to `value` (Length type). Returns `This` for chaining.
- return:This

## sideLength
```
public func sideLength(value: Length): This
```

- description:Sets the side length (overall size) of the pattern lock area to `value` (Length type). Returns `This` for chaining.
- return:This

## strokeWidth
```
public func strokeWidth(value: Length): This
```

- description:Sets the connecting path stroke width to `value` (Length type). Returns `This` for chaining.
- return:This

## PatternLockChallengeResult
```
public enum PatternLockChallengeResult
```

- enum:
  - CORRECT: correct
  - WRONG:error
