# Hyperlink

hyperlink component，displays clickable link text，click triggers system jump。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(address!: String, content!: String = "")
```

- description:Constructs an instance with the given parameters.
- params:
  - address: link URL
  - content: link display text, defaults to an empty string

```
public init(address!: AppResource, content!: String = "")
```

- params:
  - address:link URL resource reference
  - content: link display text, defaults to an empty string

```
public init(address!: String, content!: AppResource)
```

- params:
  - address: link URL
  - content:linkdisplay text resource reference

```
public init(address!: AppResource, content!: AppResource)
```

- params:
  - address:link URL resource reference
  - content:linkdisplay text resource reference

```
public init(address: String, subcomponent: () -> Unit)
```

- params:
  - address: link URL
  - subcomponent:child content builder function

```
public init(address: AppResource, subcomponent: () -> Unit)
```

- params:
  - address:link URL resource reference
  - subcomponent:child content builder function

## color
```
public func color(value: ResourceColor): This
```

- description:Sets the hyperlink text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - value:text color
- return:This
