# Path2D

public open class Path2D <: RemoteData

2D path object, reusable path definition, for Canvas 2D context fill/stroke/crop.

## init
```
public init(paths: Path2D = ...)
```

- description:Constructs an instance with the given parameters.

```
public init(pathStr: String)
```


## Methods
- `moveTo(x,y)` / `lineTo(x,y)` / `closePath()` — pathmove
- `rect(...)` / `arc(...)` / `ellipse(...)` / `bezierCurveTo(...)` / `quadraticCurveTo(...)` — geometric path
- `addPath(path)` — appendpath
