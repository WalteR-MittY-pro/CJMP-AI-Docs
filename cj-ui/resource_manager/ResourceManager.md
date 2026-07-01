# ResourceManager

Provides resource related APIs.

---

## API

### init
```
init(id: Int64)
```

- description:Constructs an instance with the given parameters.

### getResourceManager
```
public static func getResourceManager(context: StageContext): ResourceManager
```

- description:this is temporarily replaces context.
- APILevel:12
- syscap: "SystemCapability.Global.ResourceManager"
- return:ResourceManager

### getRawFileContent
```
public func getRawFileContent(path: String): Array<UInt8>
```

- description:Obtains the raw file resource corresponding to the specified resource path.
- APILevel:12
- syscap: "SystemCapability.Global.ResourceManager"
- return:Array<UInt8>
