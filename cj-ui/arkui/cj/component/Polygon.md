# Polygon

Polygon draw component, connects a set of vertices into a closed polygon, inherits from ShapeComponent.

---

## init
```
public init(width!: Length, height!: Length)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height

```
public init()
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

## points
```
public func points(value: Array<(Float64, Float64)>): This
```

- description:Sets the polygon's vertices from the `value` array of `(x, y)` coordinate pairs (Float64 overload). The polygon is drawn by connecting successive vertices and closing the path back to the first vertex. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:vertex coordinate array
- return:This

```
public func points(value: Array<(Int64, Int64)>): This
```

- description:Sets the polygon's vertices from the `value` array of `(x, y)` integer coordinate pairs (Int64 overload). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:vertex coordinate array
- return:This

## Inherited Methods
Inherited from ShapeComponent; see [Shape](./Shape.md) for common shape methods:
- fill / fillOpacity / stroke / strokeWidth / strokeOpacity / strokeDashArray / strokeDashOffset / strokeLineCap / strokeLineJoin / strokeMiterLimit / antiAlias / width / height / size
