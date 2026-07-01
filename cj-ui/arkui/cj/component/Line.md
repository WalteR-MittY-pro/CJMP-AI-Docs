# Line

A straight-line drawing component that renders a line segment from a start point to an end point, inheriting from ShapeComponent.

> Note: The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(width!: Length, height!: Length)
```

- description: Constructs an instance with the given parameters.
- params:
  - width: Width.
  - height: Height.

```
public init()
```


## startPoint
```
public func startPoint(value: (Float64, Float64)): This
```

- description: Sets the start point.
- params:
  - value: (x, y) coordinate tuple.
- return: This

```
public func startPoint(value: (Int64, Int64)): This
```

- params:
  - value: (x, y) coordinate tuple.
- return: This

## endPoint
```
public func endPoint(value: (Float64, Float64)): This
```

- description: Sets the end point.
- params:
  - value: (x, y) coordinate tuple.
- return: This

```
public func endPoint(value: (Int64, Int64)): This
```

- params:
  - value: (x, y) coordinate tuple.
- return: This

## Inherited Methods
Inherited from ShapeComponent; see [Shape](./Shape.md) for common shape methods:
- fill / fillOpacity / stroke / strokeWidth / strokeOpacity / strokeDashArray / strokeDashOffset / strokeLineCap / strokeLineJoin / strokeMiterLimit / antiAlias / width / height / size
