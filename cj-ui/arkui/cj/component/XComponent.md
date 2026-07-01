# XComponent

Custom drawing component, provides a Surface for external libraries (such as graphics/video decoding libraries) to draw directly.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.XComponentController  callbackused `/** @since 14 */` documentation comment.

---

## SurfaceRect
```
public struct SurfaceRect
```


### init

```
public init(offsetX: Float32, offsetY: Float32, surfaceWidth: Float32, surfaceHeight: Float32)
```

- description:Constructs an instance with the given parameters.
- params:
  - offsetX:X offset
  - offsetY:Y offset
  - surfaceWidth:width
  - surfaceHeight:height

## SurfaceRotationOptions
```
public struct SurfaceRotationOptions
```


### init

```
public init(lock: Bool)
```

- description:Constructs an instance with the given parameters.
- params:
  - lock:whether to lock rotation

## XComponentController
```
public open class XComponentController
```


### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### getXComponentSurfaceId

```
public func getXComponentSurfaceId(): String
```

- description:Returns the x component surface id.
- return:Surface id string

### setXComponentSurfaceRect

```
public func setXComponentSurfaceRect(rect: SurfaceRect): Unit
```

- description:Sets the XComponent surface rendering region to `rect` (a `SurfaceRect`).
- params:
  - rect:region

### getXComponentSurfaceRect

```
public func getXComponentSurfaceRect(): SurfaceRect
```

- description:Returns the x component surface rect.
- return:SurfaceRect

### setXComponentSurfaceRotation

```
public func setXComponentSurfaceRotation(rotationOptions: SurfaceRotationOptions): Unit
```

- description:Sets the XComponent surface rotation to `rotationOptions` (a `SurfaceRotationOptions`).
- params:
  - rotationOptions:rotation options

### getXComponentSurfaceRotation

```
public func getXComponentSurfaceRotation(): SurfaceRotationOptions
```

- description:Returns the x component surface rotation.
- return:SurfaceRotationOptions

### onSurfaceCreated

```
protected open func onSurfaceCreated(_: String)
```

- description:Registers the surface created callback.
- APILevel:14
- params:
  - surfaceId:Surface id

### onSurfaceChanged

```
protected open func onSurfaceChanged(_: String, _: SurfaceRect)
```

- description:Registers the surface changed callback.
- APILevel:14
- params:
  - surfaceId:Surface id
  - SurfaceRect:new region

### onSurfaceDestroyed

```
protected open func onSurfaceDestroyed(_: String)
```

- description:Registers the surface destroyed callback.
- APILevel:14
- params:
  - surfaceId:Surface id

## init
```
public init(id!: String, `type`!: XComponentType, controller!: XComponentController)
```

- description:Constructs an instance with the given parameters.
- params:
  - id:component id
  - type:component type, XComponentType enum
  - controller:controller

## enableSecure
```
public func enableSecure(isSecure: Bool): This
```

- description:Sets whether the XComponent content is protected from screen capture. When `isSecure` is `true` capture is blocked; when `false` it is allowed. Returns `This` for chaining.
- params:
  - isSecure:whether secure
- return:This
