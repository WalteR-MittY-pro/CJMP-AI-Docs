# CJResource

resourcereference，encapsulate id、typeandparameter。

---

## API

### getResourceString
```
public func getResourceString(content: CJResource): String
```

- description:Returns the resource string.
- return:String

### getResourcePluralString
```
public func getResourcePluralString(content: PluralResource): String
```

- description:Returns the resource plural string.
- return:String

### getResourceLength
```
public func getResourceLength(content: CJResource): Length
```

- description:Returns the resource length.
- return:Length

### getResourceColor
```
public func getResourceColor(content: CJResource): Color
```

- description:Returns the resource color.
- return:Color

### getResourceMedia
```
public func getResourceMedia(content: CJResource): String
```

- description:Returns the resource media.
- return:String

### init
```
public init(id: Int64, ty: UInt32, params: String)
```

- description:Constructs an instance with the given parameters.

## Fields

- id:Int64
- ty:UInt32
- params:String
