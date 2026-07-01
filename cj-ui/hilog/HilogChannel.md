# HilogChannel

Log channel class, provides configurable leveled log output.

---

## API

### init
```
public init(ty: UInt32, domain: UInt32, tag: String)
```

- description:Constructs a HilogChannel with the log `ty` (type), `domain` (log domain) and `tag` (log tag).
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"

### isLoggable
```
public func isLoggable(level: UInt32): Bool
```

- description:Returns whether a log at the given `level` is loggable on this channel.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"
- return:Bool

### debug
```
public func debug<T>(message: T): Unit where T <: ToString
```

- description:Logs `message` at the DEBUG level. `T` must implement `ToString`.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"

### info
```
public func info<T>(message: T): Unit where T <: ToString
```

- description:Logs `message` at the INFO level. `T` must implement `ToString`.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"

### warn
```
public func warn<T>(message: T): Unit where T <: ToString
```

- description:Logs `message` at the WARN level. `T` must implement `ToString`.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"

### error
```
public func error<T>(message: T): Unit where T <: ToString
```

- description:Logs `message` at the ERROR level. `T` must implement `ToString`.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"

### fatal
```
public func fatal<T>(message: T): Unit where T <: ToString
```

- description:Logs `message` at the FATAL level. `T` must implement `ToString`.
- APILevel:12
- syscap: "SystemCapability.HiviewDFX.HiLog"
