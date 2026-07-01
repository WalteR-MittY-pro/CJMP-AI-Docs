# cj_ui_resource

Resource value access top-level functions (getResourceString/Color/Length/Media and parseResourceParams).

---

## API

### getResourceString
```
public func getResourceString(res: AppResource): String
```

- description:Returns the resource string.
- return:String

### getResourceMedia
```
public func getResourceMedia(res: AppResource): String
```

- description:Returns the resource media.
- return:String

### getResourceColor
```
public func getResourceColor(res: AppResource): Color
```

- description:Returns the resource color.
- return:Color

### getResourceLength
```
public func getResourceLength(res: AppResource): Length
```

- description:Returns the resource length.
- return:Length

### parseResourceParams
```
public func parseResourceParams(paramsOpt: ?Array<Any>): String
```

- description:Serialises the optional resource-parameter array `paramsOpt` into the string representation used by the resource manager. Returns the resulting parameter string.
- return:String
