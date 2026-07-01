# AppResource

public class AppResource <: Length & ResourceColor

Application resource reference, encapsulates bundleName/moduleName/id, inherits from Length and ResourceColor.

---

## API

### init
```
public AppResource(
    public let bundleName: String,
    public let moduleName: String,
    public let id: Int32,
    public let params!: ?Array<Any> = None,
    public let resType!: ?Int32 = None
)
```

- description:Constructs an instance with the given parameters.
- APILevel:18
- syscap: "SystemCapability.Global.ResourceManager"

### __GenerateResource__
```
public func __GenerateResource__(
    bundleName: String,
    moudleType: String,
    moduleName: String,
    resId: Int32,
    resStr: String,
    params: Array<Any>,
    resType: Int32
): AppResource
```

- description:Generates an AppResource instance based on the given bundle/module/resource info. For HAR modules it uses the default har bundle/module names with id -1; for rawfile resources (resType 30000) it wraps the resStr into params; otherwise it returns an AppResource built from bundleName/moduleName/resId with the supplied params and resType.
- return:AppResource
- APILevel:18
- syscap: "SystemCapability.Global.ResourceManager"

## Fields

- bundleName:String
- moduleName:String
- id:Int32
- params:?Array<Any>
- resType:?Int32
