# DataUriUtils

URI parameter utility, performs get/append/delete/update on the id segment of a uri.

---

## API

### getId
```
public static func getId(uri: String): Int64
```

- description:Obtains the ID attached to the end of the path component of the given uri.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Int64

### attachId
```
public static func attachId(uri: String, id: Int64): String
```

- description:Attaches the given ID to the end of the path component of the given uri.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:String

### deleteId
```
public static func deleteId(uri: String): String
```

- description:Deletes the ID from the end of the path component of the given uri.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:String

### updateId
```
public static func updateId(uri: String, id: Int64): String
```

- description:Updates the ID in the specified uri 2.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:String
