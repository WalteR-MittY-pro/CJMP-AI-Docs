# Divider

Divider component, used to draw a separating line inside a container, supports horizontal/vertical directions.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init()
```

- description:Constructs an instance with the given parameters.

## vertical
```
public func vertical(isVertical: Bool): This
```

- description:Sets whether the divider is drawn vertically. When `isVertical` is `true` the divider runs top-to-bottom; otherwise (default) it runs left-to-right. Returns `This` for chaining.
- params:
  - isVertical: whether vertical
- return:This

## color
```
public func color(color: ResourceColor): This
```

- description:Sets the divider color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color: divider color
- return:This

## strokeWidth
```
public func strokeWidth(width: Length): This
```

- description:Sets the divider stroke width to `value` (Length type). Returns `This` for chaining.
- params:
  - width:thickness, Length type
- return:This

## lineCap
```
public func lineCap(style: LineCapStyle): This
```

- description:Sets the divider endpoint style to `value` (`LineCapStyle` enum: `Butt`/`Round`/`Square`). Returns `This` for chaining.
- params:
  - style: endpoint style, LineCapStyle enum
- return:This
