# Color

Color type, supports RGBA components and alphaAdapt/toUInt32 conversion.

---

## API

### init
```
public init(red: UInt8, green: UInt8, blue: UInt8, alpha!: Float32 = 1.0)
```

- description:Constructs an instance with the given parameters.

### init
```
public init(value: UInt32)
```

- description:Constructs an instance with the given parameters.

### alphaAdapt
```
public static func alphaAdapt(origin: UInt32): UInt32
```

- description:Adapts the alpha channel of `origin` to the platform's expected alpha encoding (e.g. premultiplied vs straight) and returns the resulting packed `UInt32`.
- return:UInt32

### toUInt32
```
public func toUInt32(): UInt32
```

- description:Packs the RGBA components of this color into a single `UInt32` as `0xAARRGGBB` and returns it.
- return:UInt32
