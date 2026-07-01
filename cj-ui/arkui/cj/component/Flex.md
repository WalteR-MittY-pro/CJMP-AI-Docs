# Flex

Flexible layout container, supports main axis/cross axis direction, line wrapping, alignment and spacing, more flexible than Row/Column.

---

## FlexParams
```
public struct FlexParams
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public FlexParams(public var direction!: FlexDirection = FlexDirection.Row, public var wrap!: FlexWrap = FlexWrap.NoWrap, public var justifyContent!: FlexAlign = FlexAlign.Start, public var alignItems!: ItemAlign = ItemAlign.Start, public var alignContent!: FlexAlign = FlexAlign.Start)
```

- APILevel:16
- params:
  - direction: main axis direction，default Row
  - wrap:wrap mode, default NoWrap
  - justifyContent: main axis alignment，default Start
  - alignItems: cross axis alignment，default Start
  - alignContent: multi-axis alignment，default Start

## FlexSpaceOptions
```
public struct FlexSpaceOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public FlexSpaceOptions(mainSpace!: Length = 0.px, crossSpace!: Length = 0.px)
```

- APILevel:16
- params:
  - mainSpace:main axisspacing，default 0px
  - crossSpace:cross axisspacing，default 0px

## FlexOptions
```
public struct FlexOptions
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"

### init

```
public FlexOptions(public var direction!: FlexDirection = FlexDirection.Row, public var wrap!: FlexWrap = FlexWrap.NoWrap, public var justifyContent!: FlexAlign = FlexAlign.Start, public var alignItems!: ItemAlign = ItemAlign.Start, public var alignContent!: FlexAlign = FlexAlign.Start, public var space!: FlexSpaceOptions = FlexSpaceOptions())
```

- APILevel:16
- params:
  - direction: main axis direction，default Row
  - wrap:wrap mode, default NoWrap
  - justifyContent: main axis alignment，default Start
  - alignItems: cross axis alignment，default Start
  - alignContent: multi-axis alignment，default Start
  - space:spacingoption，defaultnonespacing

## Flex
```
public Flex(value: FlexParams)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:layout parameter

## init
```
public init(value: FlexParams, child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:layout parameter
  - child:child content builder function

```
public init(child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - child:child content builder function

```
public init(value: FlexOptions)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:layout option

```
public init(value: FlexOptions, child: () -> Unit)
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:layout option
  - child:child content builder function

## width
```
public func width(value: Length): This
```

- description:Sets the Flex container's overall width to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:width
- return:This

## height
```
public func height(value: Length): This
```

- description:Sets the Flex container's overall height to `value`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - value:height
- return:This

## size
```
public func size(width!: Length, height!: Length): This
```

- description:Sets the Flex container's overall `width` and `height`. Returns `This` for chaining.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - width:width
  - height:height
- return:This
