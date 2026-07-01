# RelativeContainer

relative layout container，child elementpositioned relative to other elements or container edges via anchor rules，supports guide lines and barriers。

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## HorizontalAnchor
```
public class HorizontalAnchor
```


### init

```
public HorizontalAnchor(public var anchor: String, public var align: HorizontalAlign)
```

- params:
  - anchor: anchor target id
  - align:horizontalalignmentmode

## VerticalAnchor
```
public class VerticalAnchor
```


### init

```
public VerticalAnchor(public var anchor: String, public var align: VerticalAlign)
```

- params:
  - anchor: anchor target id
  - align:verticalalignmentmode

## Bias
```
public class Bias
```


### init

```
public Bias(public var horizontal!: ?Float32 = None, public var vertical!: ?Float32 = None)
```

- params:
  - horizontal:horizontalbias，default None
  - vertical:verticalbias，default None

## AlignRuleOption
```
public class AlignRuleOption
```


### init

```
public AlignRuleOption(public var left!: ?HorizontalAnchor = None, public var right!: ?HorizontalAnchor = None, public var middle!: ?HorizontalAnchor = None, public var top!: ?VerticalAnchor = None, public var bottom!: ?VerticalAnchor = None, public var center!: ?VerticalAnchor = None, public var bias!: ?Bias = None)
```

- params:
  - left: left side anchor, default None
  - right: right side anchor, default None
  - middle: horizontal centerline anchor，default None
  - top: top anchor，default None
  - bottom: bottom anchor，default None
  - center: vertical centerline anchor，default None
  - bias: bias，default None

## LocalizedHorizontalAlignParam
```
public class LocalizedHorizontalAlignParam
```


### init

```
public LocalizedHorizontalAlignParam(public var anchor!: String, public var align!: HorizontalAlign)
```

- params:
  - anchor: anchor id
  - align:horizontalalignment

## LocalizedVerticalAlignParam
```
public class LocalizedVerticalAlignParam
```


### init

```
public LocalizedVerticalAlignParam(public var anchor!: String, public var align!: VerticalAlign)
```

- params:
  - anchor: anchor id
  - align:verticalalignment

## LocalizedAlignRuleOptions
```
public class LocalizedAlignRuleOptions
```


### init

```
public LocalizedAlignRuleOptions(public var start!: ?LocalizedHorizontalAlignParam = None, public var end!: ?LocalizedHorizontalAlignParam = None, public var middle!: ?LocalizedHorizontalAlignParam = None, public var top!: ?LocalizedVerticalAlignParam = None, public var bottom!: ?LocalizedVerticalAlignParam = None, public var center!: ?LocalizedVerticalAlignParam = None, public var bias!: ?Bias = None)
```

- params:
  - start:startanchor，default None
  - end:endanchor，default None
  - middle: horizontal centerline anchor，default None
  - top: top anchor，default None
  - bottom: bottom anchor，default None
  - center: vertical centerline anchor，default None
  - bias: bias，default None

## GuideLinePosition
```
public class GuideLinePosition
```


### init

```
public GuideLinePosition(public var start!: ?Length = None, public var end!: ?Length = None)
```

- params:
  - start:startoffset，default None
  - end:endoffset，default None

## GuideLineStyle
```
public class GuideLineStyle
```


### init

```
public GuideLineStyle(public var id: String, public var direction: Axis, public var position: GuideLinePosition)
```

- params:
  - id:guide lines id
  - direction: direction，Axis enum
  - position:position

## BarrierStyle
```
public class BarrierStyle
```


### init

```
public BarrierStyle(public var id: String, public var direction: BarrierDirection, public var referencedId: Array<String>)
```

- params:
  - id: barrier id
  - direction: barrier direction, BarrierDirection enum
  - referencedId: referenced element id list

## LocalizedBarrierStyle
```
public class LocalizedBarrierStyle
```


### init

```
public LocalizedBarrierStyle(public var id: String, public var localizedDirection: LocalizedBarrierDirection, public var referencedId: Array<String>)
```

- params:
  - id: barrier id
  - localizedDirection: localized direction, LocalizedBarrierDirection enum
  - referencedId: referenced element id list

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


## guideLine
```
public func guideLine(value: Array<GuideLineStyle>): This
```

- description:Sets a vertical or horizontal guide line at `position` for relative-layout anchoring. Returns `This` for chaining.
- params:
  - value:guide linesstylearray
- return:This

## barrier
```
public func barrier(value: Array<BarrierStyle>): This
```

- description:Sets the relative-layout barriers from the `value` array of `BarrierStyle` entries. Each barrier defines an alignment reference derived from a set of anchor components. Returns `This` for chaining.
- params:
  - value:barrierstylearray
- return:This

```
public func barrier(value: Array<LocalizedBarrierStyle>): This
```

- params:
  - value: localized barrier style array
- return:This
