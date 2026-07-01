# Matrix4

public class Matrix4

Static factory entry for 4×4 transformation matrices (`Matrix4Transit`). Use `initialize` to build a matrix from explicit components or `identity` to build an identity matrix.

---

## API

### initialize
```
public static func initialize(array: Array<Float64>): Matrix4Transit
```

- description:Constructs a `Matrix4Transit` from the 16-component `array` (row-major). Throws if the input is invalid.
- return:Matrix4Transit

### identity
```
public static func identity(): Matrix4Transit
```

- description:Constructs and returns a `Matrix4Transit` representing the 4×4 identity matrix. Throws if the matrix cannot be built.
- return:Matrix4Transit
