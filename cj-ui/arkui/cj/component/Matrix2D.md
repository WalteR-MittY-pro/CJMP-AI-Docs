# Matrix2D

public class Matrix2D <: RemoteData

2D transform matrix, used for component transform / Canvas transform. Provides the 6 affine components (scaleX/scaleY/rotateX/rotateY/translateX/translateY) as mutable properties plus identity/invert/rotate/translate/scale operations that mutate the receiver and return `this` for chaining.

---

## API

### init
```
public init(unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT)
```

- description:Constructs a Matrix2D using the given length-metrics `unit` (default `DEFAULT`) and registers it with the RemoteDataManager.

### scaleX
```
public mut prop scaleX: Float64
```

- description:Horizontal scale component of the matrix. Reading returns the current value; assigning updates it.

### scaleY
```
public mut prop scaleY: Float64
```

- description:Vertical scale component of the matrix. Reading returns the current value; assigning updates it.

### rotateX
```
public mut prop rotateX: Float64
```

- description:Horizontal rotation component of the matrix. Reading returns the current value; assigning updates it.

### rotateY
```
public mut prop rotateY: Float64
```

- description:Vertical rotation component of the matrix. Reading returns the current value; assigning updates it.

### translateX
```
public mut prop translateX: Float64
```

- description:Horizontal translation component of the matrix. Reading returns the current value; assigning updates it.

### translateY
```
public mut prop translateY: Float64
```

- description:Vertical translation component of the matrix. Reading returns the current value; assigning updates it.

### identity
```
public func identity(): This
```

- description:Resets this matrix to the identity matrix in place. Returns `this` for chaining.
- return:This

### invert
```
public func invert(): This
```

- description:Inverts this matrix in place. Returns `this` for chaining.
- return:This

### rotate
```
public func rotate(degree: Float64, rx!: Float64 = 0.0, ry!: Float64 = 0.0): This
```

- description:Post-multiplies a rotation of `degree` degrees about (`rx`, `ry`) (default 0.0, 0.0) into this matrix. Returns `this` for chaining.
- return:This

### translate
```
public func translate(tx!: Float64 = 0.0, ty!: Float64 = 0.0): This
```

- description:Post-multiplies a translation of (`tx`, `ty`) (default 0.0, 0.0) into this matrix. Returns `this` for chaining.
- return:This

### scale
```
public func scale(sx!: Float64 = 1.0, sy!: Float64 = 1.0): This
```

- description:Post-multiplies a scale of (`sx`, `sy`) (default 1.0, 1.0) into this matrix. Returns `this` for chaining.
- return:This
