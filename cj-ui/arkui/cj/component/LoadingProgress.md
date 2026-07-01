# LoadingProgress

Circular loading progress animation component, displays data loading state.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init()
```

- description:Constructs an instance with the given parameters.

## color
```
public func color(value: ResourceColor): This
```

- description:Sets the loading indicator color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:foreground color
- return:This

## enableLoading
```
public func enableLoading(enable: Bool): This
```

- description:Enables or disables the loading animation. When `enable` is `true` (default) the indicator animates; when `false` it is shown statically. Returns `This` for chaining.
- params:
  - enable:whether enabled
- return:This

## foregroundColor
```
public func foregroundColor(color: ResourceColor): This
```

- description:Sets the foreground color of the loading indicator to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color:foreground color
- return:This

```
public func foregroundColor(value: ColoringStrategy): This
```

- params:
  - value:ColoringStrategy enum
- return:This
