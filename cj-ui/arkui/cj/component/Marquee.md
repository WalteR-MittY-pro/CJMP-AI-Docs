# Marquee

marquee component，makes long text scroll in a loop within a fixed area。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(start!: Bool, src!: String, step!: Float64 = 6.0, loop!: Int32 = -1, fromStart!: Bool = true)
```

- description:Constructs an instance with the given parameters.
- params:
  - start: whether to start scrolling
  - src:scrolltext
  - step: scroll step size each time (px), default 6.0
  - loop: scroll count, -1 represents unlimited loop，default -1
  - fromStart: whether to scroll from start，default true

```
public init(start!: Bool, src!: String, step!: Int64, loop!: Int32 = -1, fromStart!: Bool = true)
```

- params:
  - start: whether to start scrolling
  - src:scrolltext
  - step: scroll step size each time
  - loop: scroll count, -1 represents unlimited loop，default -1
  - fromStart: whether to scroll from start，default true

## allowScale
```
public func allowScale(value: Bool): This
```

- description:Sets whether the marquee text is scaled with the system font size. When `value` is `true` scaling is enabled; when `false` it is disabled. Returns `This` for chaining.
- params:
  - value: whether to allow scaling
- return:This

## fontColor
```
public func fontColor(color: ResourceColor): This
```

- description:Sets the marquee text color to `color` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- params:
  - color:textcolor
- return:This

## fontSize
```
public func fontSize(size: Length): This
```

- description:Sets the marquee text font size to `size` (Length type). Returns `This` for chaining.
- params:
  - size:font size，Length type
- return:This

## fontWeight
```
public func fontWeight(value: FontWeight): This
```

- description:Sets the marquee text font weight to `value` (`FontWeight` enum). Returns `This` for chaining.
- params:
  - value:font weight, FontWeight enum
- return:This

## fontFamily
```
public func fontFamily(content: String): This
```

- description:Sets the marquee text font family to `content` (font name string or `AppResource` reference). Returns `This` for chaining.
- params:
  - content:font family name
- return:This

```
public func fontFamily(content: AppResource): This
```

- params:
  - content:font family resource reference
- return:This

## marqueeUpdateStrategy
```
public func marqueeUpdateStrategy(content: MarqueeUpdateStrategy): This
```

- description:Sets the marquee content update strategy to `content` (`MarqueeUpdateStrategy` enum), controlling how the marquee updates when content changes. Returns `This` for chaining.
- params:
  - content:updatestrategy，MarqueeUpdateStrategy enum
- return:This

## onStart
```
public func onStart(callback: () -> Unit): This
```

- description:Registers the start callback.
- params:
  - callback:callback function
- return:This

## onBounce
```
public func onBounce(callback: () -> Unit): This
```

- description:Registers the bounce callback.
- params:
  - callback:callback function
- return:This

## onFinish
```
public func onFinish(callback: () -> Unit): This
```

- description:Registers the finish callback.
- params:
  - callback:callback function
- return:This
