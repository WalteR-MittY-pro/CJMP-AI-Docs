# OffscreenCanvas

public class OffscreenCanvas <: RemoteData

Offscreen canvas, draws in memory without directly displaying, commonly used for image processing/cached drawing.

## init
```
public init(width, height)
```

- description:Constructs an instance with the given parameters.

## Methods
- `getContext(type)` — get 2D context (returns OffscreenCanvasRenderingContext2D)
- `transferToImageBitmap()` — convert to ImageBitmap
- `width` / `height` — width and height
