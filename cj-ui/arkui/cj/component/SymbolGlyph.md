# SymbolGlyph

Symbol font icon component, displays vector icons based on symbol fonts.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## SymbolEffect
```
public open class SymbolEffect
```


### init

SymbolEffect(let effectType!: SymbolEffectType = SymbolEffectType.NONE, let scope!: ?EffectScope = None, let direction!: ?EffectDirection = None, let fillStyle!: ?EffectFillStyle = None)

- params:
  - effectType:animation effecttype
  - scope: effect scope, default None
  - direction: direction，default None
  - fillStyle:fillstyle，default None

## ScaleSymbolEffect
```
public class ScaleSymbolEffect <: SymbolEffect
```


### init

```
public init(scope!: EffectScope = EffectScope.LAYER, direction!: EffectDirection = EffectDirection.DOWN)
```

- description:Constructs an instance with the given parameters.
- params:
  - scope:scope, default LAYER
  - direction: direction，default DOWN

## HierarchicalSymbolEffect
```
public class HierarchicalSymbolEffect <: SymbolEffect
```


### init

```
public init(fillStyle!: EffectFillStyle = EffectFillStyle.CUMULATIVE)
```

- description:Constructs an instance with the given parameters.
- params:
  - fillStyle:fillstyle，default CUMULATIVE

## AppearSymbolEffect
```
public class AppearSymbolEffect <: SymbolEffect
```

### init
```
public init(scope!: EffectScope = EffectScope.LAYER)
```
- description:Constructs an instance with the given parameters.
- params:
  - scope:scope, default LAYER

## DisappearSymbolEffect
```
public class DisappearSymbolEffect <: SymbolEffect
```

### init
```
public init(scope!: EffectScope = EffectScope.LAYER)
```
- description:Constructs an instance with the given parameters.
- params:
  - scope:scope, default LAYER

## BounceSymbolEffect
```
public class BounceSymbolEffect <: SymbolEffect
```

### init
```
public init(scope!: EffectScope = EffectScope.LAYER, direction!: EffectDirection = EffectDirection.DOWN)
```
- description:Constructs an instance with the given parameters.
- params:
  - scope:scope, default LAYER
  - direction: direction，default DOWN

## ReplaceSymbolEffect
```
public class ReplaceSymbolEffect <: SymbolEffect
```

### init
```
public init(scope!: EffectScope = EffectScope.LAYER)
```
- description:Constructs an instance with the given parameters.
- params:
  - scope:scope, default LAYER

## PulseSymbolEffect
```
public class PulseSymbolEffect <: SymbolEffect
```

### init
```
public init()
```

- description:Constructs an instance with the given parameters.
## init
```
public init()
```

- description:Constructs an instance with the given parameters.

```
public init(value: AppResource)
```

- params:
  - value:symbol resource reference

## fontColor
```
public func fontColor(value: Array<Color>): This
```

- description:Sets the symbol glyph font color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:colorarray
- return:This

> Also has `value: Array<UInt32>` and `value: Array<AppResource>` overload。

## fontSize
```
public func fontSize(size: Length): This
```

- description:Sets the symbol glyph font size to `value` (Length type). Returns `This` for chaining.
- params:
  - size:font size
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```

- description:Sets the symbol glyph font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- params:
  - value:font weight, FontWeight enum
- return:This

## renderingStrategy
```
public func renderingStrategy(value: SymbolRenderingStrategy): This
```

- description:Sets the symbol rendering strategy to `value` (`SymbolRenderingStrategy` enum). Returns `This` for chaining.
- params:
  - value:rendering strategy, SymbolRenderingStrategy enum
- return:This

## effectStrategy
```
public func effectStrategy(value: SymbolEffectStrategy): This
```

- description:Sets the symbol effect strategy to `value` (`SymbolEffectStrategy` enum). Returns `This` for chaining.
- params:
  - value:animation strategy, SymbolEffectStrategy enum
- return:This

## symbolEffect
```
public func symbolEffect(symbolEffect: SymbolEffect, isActive!: ?Bool = None): This
```

- description:Sets the symbol animation effect to `value` (`SymbolEffect` enum). Returns `This` for chaining.
- params:
  - symbolEffect:animation effect object
  - isActive: whether active, default None
- return:This

```
public func symbolEffect(symbolEffect: SymbolEffect, triggerValue!: Int32): This
```

- params:
  - symbolEffect:animation effect object
  - triggerValue: trigger value
- return:This

## SymbolRenderingStrategy
```
public enum SymbolRenderingStrategy
```

- enum:
  - SINGLE: monochrome
  - MULTIPLE_COLOR: multicolor
  - MULTIPLE_OPACITY: multi-opacity

## SymbolEffectStrategy
```
public enum SymbolEffectStrategy
```

- enum:
  - NONE
  - SCALE
  - HIERARCHICAL

## EffectScope
```
public enum EffectScope
```

- enum:
  - LAYER: layered
  - WHOLE: whole

## EffectDirection
```
public enum EffectDirection
```

- enum:
  - DOWN
  - UP

## EffectFillStyle
```
public enum EffectFillStyle
```

- enum:
  - CUMULATIVE: cumulative
  - ITERATIVE: iterative
