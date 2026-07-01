# Stepper

step navigatorcontainer，guides userscomplete the flow step by step，wrapsmultiple StepperItem。

> Note: In the source, this component uses a `/** @since 11 */` documentation comment instead of an `@APILevel` block, so the sections below are annotated with APILevel:11.

---

## init
```
public init(index: UInt32, content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:11
- params:
  - index:currentdisplay  StepperItem index，default 0
  - content:child content builder function

```
public init(content: () -> Unit)
```

- APILevel:11
- params:
  - content:child content builder function

## onFinish
```
public func onFinish(callback: ()->Unit): This
```

- description:Registers the finish callback.
- APILevel:11
- params:
  - callback:callback function
- return:This

## onSkip
```
public func onSkip(callback: ()->Unit): This
```

- description:Registers the skip callback.
- APILevel:11
- params:
  - callback:callback function
- return:This

## onChange
```
public func onChange(callback: (UInt32, UInt32)->Unit): This
```

- description:Registers the change callback.
- APILevel:11
- params:
  - callback:callback function
  - UInt32: index before switch
  - UInt32: index after switch
- return:This

## onNext
```
public func onNext(callback: (UInt32, UInt32)->Unit): This
```

- description:Registers the next callback.
- APILevel:11
- params:
  - callback:callback function
  - UInt32:currentindex
  - UInt32: index to switch
- return:This

## onPrevious
```
public func onPrevious(callback: (UInt32, UInt32)->Unit): This
```

- description:Registers the previous callback.
- APILevel:11
- params:
  - callback:callback function
  - UInt32:currentindex
  - UInt32: index to switch
- return:This
