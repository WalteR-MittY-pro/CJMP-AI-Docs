# CanvasPattern

public class CanvasPattern <: RemoteData

Pattern object, created by `CanvasRenderingContext2D.createPattern`, used for fill/stroke repeating patterns.

---

## API

### init
```
public init()
```

- description:Constructs an empty CanvasPattern instance (none value).

### setTransform
```
public func setTransform(transform: Matrix2D): Unit
```

- description:Sets the transformation matrix of this pattern to `transform` (a `Matrix2D`), controlling pattern tiling position, scale and rotation.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### isNone
```
public func isNone(): Bool
```

- description:Returns whether this pattern is a none (empty) value.
- return:Bool
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
