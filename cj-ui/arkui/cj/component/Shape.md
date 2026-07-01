# Shape

shape parent container, wraps Circle/Ellipse/Line/Polyline/Polygon etc. child shapes for unified management; also carries all shape component common draw methods (provided via ShapeComponent / ShapeAbstract base class).

> Note: base class methods in source use `/** @since 11 */` documentation comments rather than `@APILevel` blocks, hence annotated as APILevel:11.

---

## ShapeComponent (Base)
shape component base class, Circle/Ellipse/Line/Polyline/Polygon/Shape all inherit from this. Methods below are shared by all shapes.

### fill

```
public func fill(color: ResourceColor): This
```

- description:Sets the shape's fill color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:11
- params:
  - color:fillcolor
- return:This

### fillOpacity

```
public func fillOpacity(value: Float64): This
```

- description:Sets the shape fill opacity to `value` (Float64, range `0.0`-`1.0`). Returns `This` for chaining.
- APILevel:11
- params:
  - value:opacity
- return:This

> Also has `value: Int64` and `value: AppResource` overload，identical behavior。

### stroke

```
public func stroke(color: ResourceColor): This
```

- description:Sets the shape's stroke (outline) color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:11
- params:
  - color:strokecolor
- return:This

### strokeDashArray

```
public func strokeDashArray(dashArray: Array<Length>): This
```

- description:Sets the stroke dash pattern to `dashArray` (an `Array<Length>` of dash/gap lengths). Returns `This` for chaining.
- APILevel:11
- params:
  - dashArray:dash spacing array
- return:This

### strokeDashOffset

```
public func strokeDashOffset(dashOffset: Length): This
```

- description:Sets the stroke dash offset (start position within the dash pattern) to `dashOffset` (Length type). Returns `This` for chaining.
- APILevel:11
- params:
  - dashOffset:startoffset
- return:This

### strokeLineCap

```
public func strokeLineCap(lineCap: LineCapStyle): This
```

- description:Sets the stroke endpoint style to `lineCap` (`LineCapStyle` enum: `Butt`/`Round`/`Square`). Returns `This` for chaining.
- APILevel:11
- params:
  - lineCap: endpoint style, LineCapStyle enum
- return:This

### strokeLineJoin

```
public func strokeLineJoin(lineJoin: LineJoinStyle): This
```

- description:Sets the stroke corner style to `lineJoin` (`LineJoinStyle` enum: `Miter`/`Round`/`Bevel`). Returns `This` for chaining.
- APILevel:11
- params:
  - lineJoin: corner style, LineJoinStyle enum
- return:This

### strokeMiterLimit

```
public func strokeMiterLimit(miterLimit: Float64): This
```

- description:Sets the stroke miter limit to `miterLimit` (Float64). Returns `This` for chaining.
- APILevel:11
- params:
  - miterLimit: upper bound value
- return:This

> Also has `miterLimit: Int64` overload。

### strokeOpacity

```
public func strokeOpacity(value: Float64): This
```

- description:Sets the stroke opacity to `value` (Float64, range `0.0`-`1.0`). Returns `This` for chaining.
- APILevel:11
- params:
  - value:opacity
- return:This

> Also has `value: Int64` and `value: AppResource` overload。

### strokeWidth

```
public func strokeWidth(value: Length): This
```

- description:Sets the stroke outline width to `value` (Length type). Returns `This` for chaining.
- APILevel:11
- params:
  - value:strokewidth
- return:This

### antiAlias

```
public func antiAlias(antiAlias: Bool): This
```

- description:Sets whether anti-aliasing is enabled for the shape. When `antiAlias` is `true` edges are smoothed; when `false` they are not. Returns `This` for chaining.
- APILevel:11
- params:
  - antiAlias: whether to enable anti-aliasing
- return:This

### width

```
public func width(value: Length): This
```

- description:Sets the shape's overall width to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:width
- return:This

### height

```
public func height(value: Length): This
```

- description:Sets the shape's overall height to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:height
- return:This

### size

```
public func size(width!: Length, height!: Length): This
```

- description:Sets the shape's overall `width` and `height`. Returns `This` for chaining.
- APILevel:11
- params:
  - width:width
  - height:height
- return:This

## ShapeAbstract (Base)
shape parent container child shape base class (CircleShape/EllipseShape etc.), provides size and offset methods within the parent container.

### fill

```
public func fill(color: ResourceColor): This
```

- description:Sets the shape's fill color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- APILevel:11
- params:
  - color:fillcolor
- return:This

### width

```
public func width(value: Length): This
```

- description:Sets the shape's overall width to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:width
- return:This

### height

```
public func height(value: Length): This
```

- description:Sets the shape's overall height to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:height
- return:This

### size

```
public func size(width!: Length, height!: Length): This
```

- description:Sets the shape's overall `width` and `height`. Returns `This` for chaining.
- APILevel:11
- params:
  - width:width
  - height:height
- return:This

### offset

```
public func offset(x!: Length, y!: Length): This
```

- description:Sets the shape's offset within the parent container to (`x`, `y`). Returns `This` for chaining.
- APILevel:11
- params:
  - x: X-axis offset
  - y: Y-axis offset
- return:This

## init
```
public init()
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

```
public init(content!: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - content:child content builder function

## viewPort
```
public func viewPort(x!: Length = 0.vp, y!: Length = 0.vp, width!: Length = 0.vp, height!: Length = 0.vp): This
```

- description:Sets the shape viewport (the visible drawing area) to (`x`, `y`, `width`, `height`). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - x: viewport X origin, default 0vp
  - y: viewport Y origin, default 0vp
  - width:viewportwidth，default 0vp
  - height:viewportheight，default 0vp
- return:This

## mesh
```
public func mesh(array: Array<Float64>, column: UInt32, row: UInt32): This
```

- description:Sets the shape's mesh distortion from the `array` of vertex displacements (Float64), arranged into a grid of `column` columns and `row` rows. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - array: vertex data array
  - column: column count
  - row:line count
- return:This

```
public func mesh(array: Array<Int64>, column: UInt32, row: UInt32): This
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - array: vertex data array
  - column: column count
  - row:line count
- return:This
