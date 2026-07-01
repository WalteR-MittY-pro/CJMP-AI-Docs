# ViewStackProcessor

public class ViewStackProcessor

View stack processor. Manages component element ID allocation and access recording during the build pipeline.

---

## API

### AllocateNewElmetIdForNextComponent
```
public static func AllocateNewElmetIdForNextComponent(): Int64
```

- description:Allocates and returns a new element ID to be assigned to the next component pushed onto the view stack.
- return:Int64

### StartGetAccessRecordingFor
```
public static func StartGetAccessRecordingFor(elmtId: Int64): Unit
```

- description:Begins recording property-access dependencies for the element identified by `elmtId`, so that subsequent reads of observable state register that element as a dependent.

### GetElmtIdToAccountFor
```
public static func GetElmtIdToAccountFor(): Int64
```

- description:Returns the element ID for which property accesses are currently being recorded.
- return:Int64

### StopGetAccessRecording
```
public static func StopGetAccessRecording(): Unit
```

- description:Stops recording property-access dependencies started by `StartGetAccessRecordingFor`.

### ImplicitPopBeforeContinue
```
public static func ImplicitPopBeforeContinue(): Unit
```

- description:Implicitly pops the top of the view stack before continuing the build pipeline, ensuring the stack is in the expected state for the next component declaration.
