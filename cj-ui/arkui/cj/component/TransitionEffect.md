# TransitionEffect

Transition animation effect, used for component show/hide enter/exit animations.

---

## optionstruct
- `TranslateOptions` — translate options
- `ScaleOptions` — scale options
- `RotateOptions` — rotate options
- `TransitionEdge` — transition edge enum

## TransitionEffect
```
public class TransitionEffect <: RemoteData
```


### Factory methods (static)
- `TransitionEffect.opacity(value)` / `.translate(...)` / `.scale(...)` / `.rotate(...)` / `.move(...)` / `.asymmetric(...)` etc. — create/combine animation effects

> Used via component `.transition(...)` interface.
