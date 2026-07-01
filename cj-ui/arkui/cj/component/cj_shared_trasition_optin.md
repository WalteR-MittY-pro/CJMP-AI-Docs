# Shared Transition Option (cj_shared_trasition_optin)

Shared element transition option configuration. Instances are passed to `sharedTransition` and related interfaces to configure the shared-element transition animation between two pages.

---

## SharedTransitionOptions
```
public struct SharedTransitionOptions
```

Options for a shared-element transition.

### Fields
- duration:Int32
- curve:Curve
- delay:Int32
- motionPath:MotionPathOptions
- zIndex:Int32
- type:SharedTransitionEffectType

### API

#### init
```
public SharedTransitionOptions(
    public var duration!: Int32 = 1000,
    public var curve!: Curve = Curve.Linear,
    public var delay!: Int32 = 0,
    public var motionPath!: MotionPathOptions = MotionPathOptions(),
    public var zIndex!: Int32 = 0,
    public var `type`!: SharedTransitionEffectType = SharedTransitionEffectType.SharedEffectExchange
)
```

- description:Constructs a SharedTransitionOptions. `duration` transition duration in ms (default 1000), `curve` easing curve (default `Curve.Linear`), `delay` start delay in ms (default 0), `motionPath` motion-path options (default empty), `zIndex` z-order during the transition (default 0), `type` shared transition effect type (default `SharedEffectExchange`).

---

## MotionPathOptions
```
public struct MotionPathOptions
```

Motion-path options for a shared-element transition.

### Fields
- path:String
- from:Float64
- to:Float64
- rotatable:Bool

### API

#### init
```
public MotionPathOptions(
    public var path!: String = "",
    public var `from`!: Float64 = 0.0,
    public var to!: Float64 = 1.0,
    public var rotatable!: Bool = false
)
```

- description:Constructs a MotionPathOptions. `path` the SVG path string the element follows (default empty), `from` start progress along the path (default 0.0), `to` end progress along the path (default 1.0), `rotatable` whether the element rotates to align with the path tangent (default false).
