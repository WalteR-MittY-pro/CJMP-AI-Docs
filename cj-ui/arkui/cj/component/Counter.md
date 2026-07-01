# Counter

Counter container component, wraps child components and provides increment/decrement button interaction.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - content:child content builder function

## enableInc
```
public func enableInc(value: Bool): This
```

- description:Sets whether the increment button is enabled. When `value` is `true` the increment button responds; when `false` it is disabled. Returns `This` for chaining.
- params:
  - value:whether enabled
- return:This

## enableDec
```
public func enableDec(value: Bool): This
```

- description:Sets whether the decrement button is enabled. When `value` is `true` the decrement button responds; when `false` it is disabled. Returns `This` for chaining.
- params:
  - value:whether enabled
- return:This

## onInc
```
public func onInc(callback: () -> Unit): This
```

- description:Registers the inc callback.
- params:
  - callback:callback function
- return:This

## onDec
```
public func onDec(callback: () -> Unit): This
```

- description:Registers the dec callback.
- params:
  - callback:callback function
- return:This
