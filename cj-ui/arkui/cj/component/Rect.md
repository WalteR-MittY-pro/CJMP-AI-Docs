# Rect

rectangle draw component，supports corner radius，inherits from ShapeComponent。also includes RectShape（used for child rectangles inside Shape parent container，inherits from ShapeAbstract）。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## Rect
### init

```
public init(width!: Length, height!: Length)
```

- description:Constructs an instance with the given parameters.
- params:
  - width:width
  - height:height

### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### radiusWidth

```
public func radiusWidth(value: Length): This
```

- description:Sets the horizontal corner radius of the rectangle to `value` (Length type). Returns `This` for chaining.
- params:
  - value:corner radiuswidth
- return:This

### radiusHeight

```
public func radiusHeight(value: Length): This
```

- description:Sets the vertical corner radius of the rectangle to `value` (Length type). Returns `This` for chaining.
- params:
  - value:corner radiusheight
- return:This

### radius

```
public func radius(value: Length): This
```

- description:Sets the corner radius of the rectangle to `value` (uniform for all four corners). Returns `This` for chaining.
- params:
  - value:corner radius
- return:This

### radius

```
public func radius<T>(radiusArray: Array<T>): T <: Length
```

- description:Sets the corner radii from the `radiusArray` of length values (top-left, top-right, bottom-right, bottom-left). Returns `This` for chaining.
- params:
  - radiusArray:corner radiusarray
- return:This

### radius

```
public func radius<T>(radiusArray: Array<(T, T)>): T <: Length
```

- description:Sets the corner radii from an array of `(radiusWidth, radiusHeight)` tuples. Returns `This` for chaining.
- params:
  - radiusArray: (radiusWidth, radiusHeight) tuple array
- return:This

## RectShape
Child rectangle inside Shape parent container, inherits from ShapeAbstract.

### init

```
public init(width!: Length, height!: Length)
```

- description:Constructs an instance with the given parameters.
- params:
  - width:width
  - height:height

### init

```
public init()
```

- description:Constructs an instance with the given parameters.
### radiusWidth / radiusHeight / radius

Same as Rect's methods of the same name, used for child shapes inside the parent container.

## Inherited Methods
Rect inherits from ShapeComponent, RectShape inherits from ShapeAbstract, common shape methods see [Shape](./Shape.md).
