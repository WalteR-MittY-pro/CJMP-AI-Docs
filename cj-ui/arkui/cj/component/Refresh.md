# Refresh

Pull-to-refresh container, wraps scrollable content and triggers refresh on pull-down.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## RefreshParams
```
public struct RefreshParams
```


### init

```
public init(refreshing!: Bool)
```

- description:Constructs an instance with the given parameters.
- params:
  - refreshing: whether initially refreshing

### init

```
public init(refreshing!: (Bool, (Bool) -> Unit))
```

- description:Constructs an instance with the given parameters.
- params:
  - refreshing: tuple of (initial state, state change callback)

## init
```
public init(refreshparams: RefreshParams, content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - refreshparams:refreshparameter
  - content:child content builder function

## refreshOffset
```
public func refreshOffset(value: Float64): This
```

- description:Sets the pull-to-refresh trigger offset to `value` (Length type). Returns `This` for chaining.
- return:This

```
public func refreshOffset(value: Int32): This
```

- return:This

## pullToRefresh
```
public func pullToRefresh(value: Bool): This
```

- description:Sets whether pull-to-refresh is enabled. When `value` is `true` the user can pull to refresh; when `false` it is disabled. Returns `This` for chaining.
- return:This

## pullDownRatio
```
public func pullDownRatio(value: Option<Float64>): This
```

- description:Sets the pull-down ratio (how far the indicator moves per pixel of pull) to `value` (Float64). Returns `This` for chaining.
- params:
  - value: damping ratio, Some/None
- return:This

## onStateChange
```
public func onStateChange(callback: (RefreshStatus) -> Unit): This
```

- description:Registers the state change callback.
- params:
  - callback:callback function
  - RefreshStatus:refreshstateenum
- return:This

## onRefreshing
```
public func onRefreshing(callback: () -> Unit): This
```

- description:Registers the refreshing callback.
- return:This

## onOffsetChange
```
public func onOffsetChange(callback: (Float64) -> Unit): This
```

- description:Registers the offset change callback.
- params:
  - callback:callback function
  - Float64:currentoffset
- return:This
