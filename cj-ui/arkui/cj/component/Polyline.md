# Polyline

polyline draw component，connects a set of points in order to form an open polyline，inherits from ShapeComponent。

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
public init(width!: Int64, height!: Int64)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height

```
public init(width!: Float64, height!: Float64)
```

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
public func points(pointList: Array<(Float64, Float64)>): This
```

- description:Sets the polyline's vertices from the `pointList` array of `(x, y)` coordinate pairs (Float64 overload). The polyline is drawn by connecting successive vertices without closing the path. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - pointList:vertex coordinate array
- return:This

```
public func points(pointList: Array<(Int64, Int64)>): This
```

- description:Sets the polyline's vertices from the `pointList` array of `(x, y)` integer coordinate pairs (Int64 overload). Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - pointList:vertex coordinate array
- return:This

## Inherited Methods
Inherited from ShapeComponent; see [Shape](./Shape.md) for common shape methods:
- fill / fillOpacity / stroke / strokeWidth / strokeOpacity / strokeDashArray / strokeDashOffset / strokeLineCap / strokeLineJoin / strokeMiterLimit / antiAlias / width / height / size
