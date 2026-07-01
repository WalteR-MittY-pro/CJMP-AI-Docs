# Canvas

Canvas component, provides 2D drawing capabilities, used with CanvasRenderingContext2D.

---

## TextMetrics
```
public struct TextMetrics
```


## RenderingContextSettings
```
public struct RenderingContextSettings
```


## CanvasGradient
```
public class CanvasGradient <: RemoteData
```


## Canvas
```
public class Canvas <: ViewBase
```


### init

```
public init(context: CanvasRenderingContext2D)
```

- description:Constructs an instance with the given parameters.
- params:
  - context: 2D rendering context

> Call draw methods via context in the child content builder function.
