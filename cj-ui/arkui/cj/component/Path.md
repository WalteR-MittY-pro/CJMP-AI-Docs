# Path

path draw component，via SVG path command string to draw custom shape，inherits from ShapeComponent。also includes PathShape（used for sub-paths within the Shape parent container，inherits from ShapeAbstract）。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## Path
### init

```
public init(commands!: String = "")
```

- description:Constructs an instance with the given parameters.
- params:
  - commands:SVG pathcommandstring，defaultempty

### init

```
public init(width!: Length, height!: Length, commands!: String = "")
```

- description:Constructs an instance with the given parameters.
- params:
  - width:width
  - height:height
  - commands:SVG pathcommandstring，defaultempty

### commands

```
public func commands(commands: String): This
```

- description:Sets the SVG path command `commands` used to draw the path (e.g. `M`, `L`, `C`, `Z` commands). Returns `This` for chaining.
- params:
  - commands:SVG pathcommandstring
- return:This

## PathShape
Shape parentcontainerinside childpath，inherits from ShapeAbstract。

### init

```
public init(commands!: String)
```

- description:Constructs an instance with the given parameters.
- params:
  - commands:SVG pathcommandstring

### init

```
public init(width!: Length, height!: Length, commands!: String = "")
```

- description:Constructs an instance with the given parameters.
- params:
  - width:width
  - height:height
  - commands:pathcommandstring，defaultempty

### init

```
public init()
```

- description:Constructs an instance with the given parameters.
## Inherited Methods
Path inherits from ShapeComponent, PathShape inherits from ShapeAbstract, common shape methods see [Shape](./Shape.md).
