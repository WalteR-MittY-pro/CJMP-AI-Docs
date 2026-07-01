# Column

Vertical linear layout container, child elements are arranged along the vertical direction.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - child:child content builder function

```
public init()
```


```
public init(space: Length, child: () -> Unit)
```

- params:
  - space:child element spacing
  - child:child content builder function

```
public init(space: Length)
```

- params:
  - space:child element spacing

## alignItems
```
public func alignItems(value: HorizontalAlign): This
```

- description:Sets the cross-axis alignment of children to `value` (`HorizontalAlign` enum: `Start`/`Center`/`End`). Returns `This` for chaining.
- params:
  - value: horizontal alignment, HorizontalAlign enum
- return:This

## justifyContent
```
public func justifyContent(value: FlexAlign): This
```

- description:Sets the main-axis distribution of children to `value` (`FlexAlign` enum). Returns `This` for chaining.
- params:
  - value: distribution mode, FlexAlign enum
- return:This

## width
```
public func width(value: Length): This
```

- description:Sets the Column container's overall width to `value`. Returns `This` for chaining.
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the Column container's overall height to `value`. Returns `This` for chaining.
- params:
  - value:height
- return:This
