# StepperItem

Single item of the step navigator, used as child content of Stepper, represents a step page.

> Note: In the source, this component uses a `/** @since 11 */` documentation comment instead of an `@APILevel` block, so the sections below are annotated with APILevel:11.

---

## init
```
public init(content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:11
- params:
  - content:child content builder function

## prevLabel
```
public func prevLabel(value: String): This
```

- description:Sets the previous-step button label to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:button text
- return:This

## nextLabel
```
public func nextLabel(value: String): This
```

- description:Sets the next-step button label to `value`. Returns `This` for chaining.
- APILevel:11
- params:
  - value:button text
- return:This

## status
```
public func status(status: ItemState): This
```

- description:Sets the current step item's display state to `status` (`ItemState` enum: e.g. `Normal`/`Active`/`Selected`/`Disabled`). Returns `This` for chaining.
- APILevel:11
- params:
  - status:displaystate，ItemState enum
- return:This
