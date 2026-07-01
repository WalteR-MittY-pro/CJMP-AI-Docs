# Gesture (cj_gesture)

Gesture event types and gesture definition classes, for component `.gesture()` / `.onGesture` etc. usage.

---

## Event base class

### BaseEvent
```
public open class BaseEvent
```

Base class of all events. Carries the universal event metadata (target, timestamp, input source, device, etc.).

#### Fields
- target:EventTarget
- timestamp:Int64
- source:SourceType
- pressure:Float64
- tiltX:Int64
- tiltY:Int64
- sourceTool:SourceTool
- axisHorizontal:Option<Float32>
- axisVertical:Option<Float32>
- getModifierKeyState:Option<(Array<String>) -> Bool>
- deviceId:Int64

### BaseGestureEvent
```
public open class BaseGestureEvent <: BaseEvent
```

Base class of all gesture events. Adds the finger list on top of `BaseEvent`.

#### Fields
- fingerList:ArrayList<FingerInfo>

### GestureEvent
```
public class GestureEvent <: BaseEvent
```

Common gesture event used by `GestureType` callbacks (e.g. `TapGesture.onAction`). Aggregates the union of fields produced by all gesture kinds (offset/scale/angle/speed/velocity, etc.).

#### Fields
- repeat:Bool
- fingerList:ArrayList<FingerInfo>
- offsetX:Float64
- offsetY:Float64
- scale:Float64
- pinchCenterX:Float64
- pinchCenterY:Float64
- angle:Float64
- speed:Float64
- velocityX:Float64
- velocityY:Float64
- velocity:Float64

#### API

##### init
```
public init(
    target: EventTarget,
    timestamp: Int64,
    source: SourceType,
    pressure: Float64,
    tiltX: Int64,
    tiltY: Int64,
    sourceTool: SourceTool,
    axisHorizontal: Option<Float32>,
    axisVertical: Option<Float32>,
    getModifierKeyState: Option<(Array<String>) -> Bool>,
    deviveId: Int64,
    repeat: Bool,
    offsetX: Float64,
    offsetY: Float64,
    angle: Float64,
    scale: Float64,
    pinchCenterX: Float64,
    pinchCenterY: Float64,
    speed: Float64,
    fingerList: ArrayList<FingerInfo>,
    velocityX: Float64,
    velocityY: Float64,
    velocity: Float64
)
```

- description:Constructs an instance with the given parameters.

---

## Gesture events

### TapGestureEvent
```
public class TapGestureEvent <: BaseGestureEvent
```

Click gesture event. No additional public fields beyond `BaseGestureEvent`.

### LongPressGestureEvent
```
public class LongPressGestureEvent <: BaseGestureEvent
```

Long press gesture event.

#### Fields
- repeat:Bool

### PanGestureEvent
```
public class PanGestureEvent <: BaseGestureEvent
```

Drag (pan) gesture event.

#### Fields
- offsetX:Float64
- offsetY:Float64
- velocityX:Float64
- velocityY:Float64
- velocity:Float64

### PinchGestureEvent
```
public class PinchGestureEvent <: BaseGestureEvent
```

Pinch gesture event.

#### Fields
- scale:Float64
- pinchCenterX:Float64
- pinchCenterY:Float64

### RotationGestureEvent
```
public class RotationGestureEvent <: BaseGestureEvent
```

Rotation gesture event.

#### Fields
- angle:Float64

### SwipeGestureEvent
```
public class SwipeGestureEvent <: BaseGestureEvent
```

Swipe (slide) gesture event.

#### Fields
- angle:Float64
- speed:Float64

---

## Data Structures

### Position
```
public struct Position
```

A point in 2D space.

#### Fields
- x:Float64
- y:Float64

### Area
```
public struct Area
```

A rectangular area expressed via width/height and two anchor positions (local and global).

#### Fields
- width:Float64
- height:Float64
- position:Position
- globalPosition:Position

### EventTarget
```
public struct EventTarget
```

Target of an event, carries the target area.

#### Fields
- area:Area

### FingerInfo
```
public struct FingerInfo
```

Information of a single finger participating in a gesture.

#### Fields
- id:Int32
- globalX:Float64
- globalY:Float64
- localX:Float64
- localY:Float64

### GestureInfo
```
public struct GestureInfo
```

Descriptive info of a gesture instance.

#### Fields
- tag:String
- type:GestureTypes
- isSystemGesture:Bool

---

## Gesture definition classes (GestureType subclasses)

### GestureType
```
public open class GestureType
```

Base class of all gesture definitions. Use `.tag(...)` to label a gesture for later lookup/removal.

#### API

##### tag
```
public func tag(tag: String): This
```

- description:Sets the gesture tag and returns `this` for chaining.

### TapGesture
```
public class TapGesture <: GestureType
```

Click gesture. Triggers `onAction` when the configured number of clicks with the configured number of fingers is recognised.

#### API

##### init
```
public init(count!: Int32 = 1, fingers!: Int32 = 1)
```

- description:Constructs a TapGesture. `count` is the number of consecutive taps (default 1), `fingers` is the number of fingers that must touch (default 1, range 1..10).

##### onAction
```
public func onAction(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the tap gesture is recognised. Returns `this` for chaining.

### LongPressGesture
```
public class LongPressGesture <: GestureType
```

Long press gesture.

#### API

##### init
```
public init(fingers!: Int32 = 1, repeat!: Bool = false, duration!: Int32 = 500)
```

- description:Constructs a LongPressGesture. `fingers` (default 1, range 1..10), `repeat` whether the event repeats (default false), `duration` minimum press duration in ms (default 500).

##### onAction
```
public func onAction(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the long press is recognised. Returns `this` for chaining.

##### onActionEnd
```
public func onActionEnd(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the long press ends (finger lifted). Returns `this` for chaining.

##### onActionCancel
```
public func onActionCancel(callback: () -> Unit): This
```

- description:Registers the callback invoked when the long press is cancelled. Returns `this` for chaining.

### PanGesture
```
public class PanGesture <: GestureType
```

Drag (pan) gesture.

#### API

##### init
```
public init(fingers!: Int32 = 1, direction!: PanDirection = PanDirection.All, distance!: Float64 = 5.0)
```

- description:Constructs a PanGesture from explicit fingers/direction/distance. `fingers` (default 1, range 1..10), `direction` allowed pan direction (default All), `distance` minimum drag distance in vp (default 5.0).

##### init
```
public init(panGestureOptions: PanGestureOptions)
```

- description:Constructs a PanGesture from a `PanGestureOptions` instance.

##### onActionStart
```
public func onActionStart(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the drag starts. Returns `this` for chaining.

##### onActionUpdate
```
public func onActionUpdate(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked while the drag updates. Returns `this` for chaining.

##### onActionEnd
```
public func onActionEnd(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the drag ends. Returns `this` for chaining.

##### onActionCancel
```
public func onActionCancel(callback: () -> Unit): This
```

- description:Registers the callback invoked when the drag is cancelled. Returns `this` for chaining.

### PinchGesture
```
public class PinchGesture <: GestureType
```

Pinch gesture.

#### API

##### init
```
public init(fingers!: Int32 = 2, distance!: Float64 = 5.0)
```

- description:Constructs a PinchGesture. `fingers` (default 2, range 2..5), `distance` minimum recognition distance in vp (default 5.0).

##### onActionStart
```
public func onActionStart(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the pinch starts. Returns `this` for chaining.

##### onActionUpdate
```
public func onActionUpdate(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked while the pinch updates. Returns `this` for chaining.

##### onActionEnd
```
public func onActionEnd(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the pinch ends. Returns `this` for chaining.

##### onActionCancel
```
public func onActionCancel(callback: () -> Unit): This
```

- description:Registers the callback invoked when the pinch is cancelled. Returns `this` for chaining.

### RotationGesture
```
public class RotationGesture <: GestureType
```

Rotation gesture.

#### API

##### init
```
public init(fingers!: Int32 = 2, angle!: Float64 = 1.0)
```

- description:Constructs a RotationGesture. `fingers` (default 2, range 2..5), `angle` minimum rotation angle in degrees for recognition (default 1.0, range 0..360).

##### onActionStart
```
public func onActionStart(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the rotation starts. Returns `this` for chaining.

##### onActionUpdate
```
public func onActionUpdate(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked while the rotation updates. Returns `this` for chaining.

##### onActionEnd
```
public func onActionEnd(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the rotation ends. Returns `this` for chaining.

##### onActionCancel
```
public func onActionCancel(callback: () -> Unit): This
```

- description:Registers the callback invoked when the rotation is cancelled. Returns `this` for chaining.

### SwipeGesture
```
public class SwipeGesture <: GestureType
```

Swipe (slide) gesture.

#### API

##### init
```
public init(fingers!: Int32 = 1, direction!: SwipeDirection = SwipeDirection.All, speed!: Float64 = 100.0)
```

- description:Constructs a SwipeGesture. `fingers` (default 1, range 1..10), `direction` allowed swipe direction (default All), `speed` minimum swipe speed in px/s (default 100.0).

##### onAction
```
public func onAction(callback: (GestureEvent) -> Unit): This
```

- description:Registers the callback invoked when the swipe is recognised. Returns `this` for chaining.

### GestureGroup
```
public class GestureGroup <: GestureType
```

Gesture group. Combines several child gestures with a `GestureMode` (parallel / sequential / exclusive).

#### API

##### init
```
public init(mode: GestureMode, gesture: Array<GestureType>)
```

- description:Constructs a GestureGroup with the given combination `mode` and the array of child `gesture`s.

##### onCancel
```
public func onCancel(callback: () -> Unit): This
```

- description:Registers the callback invoked when the gesture group is cancelled. Returns `this` for chaining.

---

## PanGestureOptions
```
public class PanGestureOptions <: RemoteData
```

Options object for `PanGesture`. Allows configuring fingers/direction/distance and mutating them after creation.

### API

### init
```
public init(fingers!: Int32 = 1, direction!: PanDirection = PanDirection.All, distance!: Float64 = 5.0)
```

- description:Constructs a PanGestureOptions with the given defaults.

### setDirection
```
public func setDirection(value: PanDirection): Unit
```

- description:Sets the allowed pan direction to `value` (`PanDirection` enum), restricting which directions the pan gesture recognizes.

### setDistance
```
public func setDistance(value: Float64): Unit
```

- description:Sets the minimum recognition distance (vp).

### setFingers
```
public func setFingers(value: Int32): Unit
```

- description:Sets the number of fingers required to recognize the gesture to `value` (Int32).

---

## GestureHandler
```
public open class GestureHandler <: RemoteData
```

Handler of a gesture attached via `UIGestureEvent.addGesture` / `addParallelGesture`. Created by gesture-handler subclasses; use `.tag(...)` to label it for later removal.

### API

### init
```
public init(id: Int64)
```

- description:Constructs a GestureHandler wrapping the given native handle id.

### tag
```
public func tag(tag: String): This
```

- description:Sets the gesture-handler tag and returns `this` for chaining.

---

## UIGestureEvent
```
public class UIGestureEvent
```

Per-component gesture event surface exposed to `GestureModifier`. Allows attaching / removing `GestureHandler`s on the host component.

### API

### addGesture
```
public func addGesture(
    gesture: GestureHandler,
    priority!: GesturePriority = GesturePriority.Low,
    mask!: GestureMask = GestureMask.Normal
): Unit
```

- description:Adds `gesture` to the host component with the given `priority` and `mask`.

### addParallelGesture
```
public func addParallelGesture(gesture: GestureHandler, mask!: GestureMask = GestureMask.Normal): Unit
```

- description:Adds `gesture` to the host component as a parallel gesture with the given `mask`.

### removeGestureByTag
```
public func removeGestureByTag(tag: String): Unit
```

- description:Removes the gesture handler previously tagged with `tag` from the host component.

### clearGestures
```
public func clearGestures(): Unit
```

- description:Removes all gesture handlers from the host component.

---

## GestureModifier
```
public interface GestureModifier
```

Implement to declaratively attach gestures to a component via `UIGestureEvent`.

### API

### applyGesture
```
func applyGesture(event: UIGestureEvent): Unit
```

- description:Called with the component's `UIGestureEvent`; implementations should add the desired gesture handlers.
