# CanvasRenderingContext2D

2D canvas render context, provides Web Canvas 2D compatible draw API.

---

## CanvasRenderingContext2D
```
public class CanvasRenderingContext2D <: RemoteData
```


## stateproperty
- `fillStyle` / `strokeStyle` — fill/stroke style (color or gradient)
- `lineWidth` / `lineCap` / `lineJoin` / `miterLimit` — line width/endpoint/corner/miter
- `lineDashOffset` / `setLineDash(...)` — dashed line
- `globalAlpha` / `globalCompositeOperation` — global transparency/compositing
- `font` / `textAlign` / `textBaseline` / `direction` — text
- `shadowBlur` / `shadowColor` / `shadowOffsetX` / `shadowOffsetY` — shadow
- `imageSmoothingEnabled` / `imageSmoothingQuality` — image smoothing

## Rectangle
- `fillRect(x, y, w, h)` / `strokeRect(...)` / `clearRect(...)` — fill/stroke/clear rectangle

## path
- `beginPath()` / `closePath()` / `moveTo(x,y)` / `lineTo(x,y)` — path start/end and move
- `rect(...)` / `arc(...)` / `arcTo(...)` / `ellipse(...)` / `bezierCurveTo(...)` / `quadraticCurveTo(...)` — geometric paths
- `fill(...)` / `stroke(...)` / `clip(...)` — fill/stroke/clip

## text
- `fillText(text, x, y, maxWidth?)` / `strokeText(...)` — fill/stroketext
- `measureText(text): TextMetrics` — measuretext

## Image
- `drawImage(image, dx, dy)` / overload (including zoom/source-target rectangle) — draw image

## Gradient and Pattern
- `createLinearGradient(...)` / `createRadialGradient(...)` / `createConicGradient(...)` — create gradient
- `createPattern(image, repetition)` — create pattern

## Transform
- `save()` / `restore()` — save/restore state
- `scale(x,y)` / `rotate(angle)` / `translate(x,y)` / `transform(...)` / `setTransform(...)` / `resetTransform(...)` — transformations

## pixel
- `getImageData(...)` / `putImageData(...)` / `createImageData(...)` — pixel read/write

## Other
- `isPointInPath(...)` / `isPointInStroke(...)` — point hit test
