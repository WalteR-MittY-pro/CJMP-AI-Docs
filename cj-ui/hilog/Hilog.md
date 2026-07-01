# Hilog

Log class, provides isLoggable/debug/info/warn/error/fatal leveled log.

---

## API

### isLoggable
```
public static func isLoggable(domain: UInt32, tag: String, level: LogLevel): Bool
```

- description:Returns whether a log at `level` is loggable for the given `domain` and `tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"
- return:Bool

### debug
```
public static func debug(domain: UInt32, tag: String, format: String): Unit
```

- description:Logs the formatted `format` message at the DEBUG level under `domain`/`tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"

### info
```
public static func info(domain: UInt32, tag: String, format: String): Unit
```

- description:Logs the formatted `format` message at the INFO level under `domain`/`tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"

### warn
```
public static func warn(domain: UInt32, tag: String, format: String): Unit
```

- description:Logs the formatted `format` message at the WARN level under `domain`/`tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"

### error
```
public static func error(domain: UInt32, tag: String, format: String): Unit
```

- description:Logs the formatted `format` message at the ERROR level under `domain`/`tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"

### fatal
```
public static func fatal(domain: UInt32, tag: String, format: String): Unit
```

- description:Logs the formatted `format` message at the FATAL level under `domain`/`tag`.
- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"

## Types

### LogLevel
```
public enum LogLevel
```

- APILevel:18
- syscap: "SystemCapability.HiviewDFX.HiLog"
- Enum Values:DEBUG | INFO | WARN | ERROR | FATAL
