# Matrix4Transit

public class Matrix4Transit

A 4×4 transformation matrix supporting copy/invert/combine/translate operations. Instances are created via `Matrix4.initialize` / `Matrix4.identity`; instance methods mutate the receiver and return `this` for chaining.

---

## API

### init
```
public init(id: Int64)
```

- description:Constructs an instance wrapping the given native matrix handle id.

### copy
```
public func copy(): Matrix4Transit
```

- description:Returns a new Matrix4Transit that is a copy of this matrix. Throws if the underlying matrix instance is invalid.
- return:Matrix4Transit

### invert
```
public func invert(): This
```

- description:Inverts this matrix in place. Returns `this` for chaining.
- return:This

### combine
```
public func combine(target: Matrix4Transit): This
```

- description:Post-multiplies this matrix by `target` in place. Returns `this` for chaining.
- return:This

### translate
```
public func translate(option: TranslateOption): This
```

- description:Applies a translation using `option.x`/`option.y`/`option.z`. Returns `this` for chaining.
- return:This

### scale
```
public func scale(params: ScaleOption): This
```

- description:Applies a scale around (`params.centerX`, `params.centerY`) using `params.x`/`params.y`/`params.z`. Returns `this` for chaining.
- return:This

### rotate
```
public func rotate(params: RotateOption): This
```

- description:Applies a rotation around (`params.centerX`, `params.centerY`) by `params.angle` about axis (`params.x`, `params.y`, `params.z`). Returns `this` for chaining.
- return:This

### transformPoint
```
public func transformPoint(options: VArray<Float64, $2>): Array<Float64>
```

- description:Transforms the 2D point `[x, y]` by this matrix and returns the resulting `[x', y']`.
- return:Array<Float64>

### skew
```
public func skew(x: Float32, y: Float32): This
```

- description:Applies a skew with the given `x` and `y` factors. Returns `this` for chaining.
- return:This

### setPolyToPoly
```
public func setPolyToPoly(options: PolyToPolyOptions): This
```

- description:Sets a poly-to-poly transform mapping `options.src` (starting at `options.srcIndex`) to `options.dst` (starting at `options.dstIndex`), using `options.pointCount` points. Returns `this` for chaining.
- return:This

## Fields

- id:Int64

---

## Types

### ScaleOption
```
public struct ScaleOption
```

Options for `Matrix4Transit.scale`.

#### Fields
- x:Float32
- y:Float32
- z:Float32
- centerX:Float32
- centerY:Float32

#### API

##### init
```
public init(
    x!: Float32 = 1.0,
    y!: Float32 = 1.0,
    z!: Float32 = 1.0,
    centerX!: Float32 = 0.0,
    centerY!: Float32 = 0.0
)
```

- description:Constructs a ScaleOption. `x`/`y`/`z` are scale factors (default 1.0), `centerX`/`centerY` are the scale center (default 0.0).

### RotateOption
```
public struct RotateOption
```

Options for `Matrix4Transit.rotate`.

#### Fields
- x:Float32
- y:Float32
- z:Float32
- angle:Float32
- centerX:Float32
- centerY:Float32

#### API

##### init
```
public init(
    x!: Float32 = 0.0,
    y!: Float32 = 0.0,
    z!: Float32 = 0.0,
    angle!: Float32 = 0.0,
    centerX!: Float32 = 0.0,
    centerY!: Float32 = 0.0
)
```

- description:Constructs a RotateOption. `x`/`y`/`z` form the rotation axis (default 0.0), `angle` is the rotation angle in degrees (default 0.0), `centerX`/`centerY` are the rotation center (default 0.0).

### TranslateOption
```
public struct TranslateOption
```

Options for `Matrix4Transit.translate`.

#### Fields
- x:Float32
- y:Float32
- z:Float32

#### API

##### init
```
public init(
    x!: Float32 = 0.0,
    y!: Float32 = 0.0,
    z!: Float32 = 0.0
)
```

- description:Constructs a TranslateOption with translation along x/y/z (default 0.0).

### Point
```
public struct Point
```

A 2D point used by `PolyToPolyOptions`.

#### Fields
- x:Float64
- y:Float64

#### API

##### init
```
public init(x: Float64, y: Float64)
```

- description:Constructs a Point with the given `x` and `y`.

### PolyToPolyOptions
```
public struct PolyToPolyOptions
```

Options for `Matrix4Transit.setPolyToPoly`.

#### Fields
- src:Array<Point>
- srcIndex:Int32
- dst:Array<Point>
- dstIndex:Int32
- pointCount:Int32

#### API

##### init
```
public init(
    src!: Array<Point>,
    srcIndex!: Int32 = 0,
    dst!: Array<Point>,
    dstIndex!: Int32 = 0,
    pointCount!: Int32 = Int32(src.size) / 2
)
```

- description:Constructs a PolyToPolyOptions. `src` is the source point array (read starting at `srcIndex`), `dst` is the destination point array (read starting at `dstIndex`), `pointCount` is the number of points to map (default `src.size / 2`).
