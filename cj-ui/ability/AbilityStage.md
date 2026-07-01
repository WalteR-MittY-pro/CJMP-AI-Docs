# AbilityStage

HAP module-level base class, provides module loading and onAcceptWant/onConfigurationUpdate/onMemoryLevel callbacks.

---

## API

### registerCreator
```
public static func registerCreator(moduleName: String, creator: () -> AbilityStage): Unit
```

- description:Registers a `creator` factory for the HAP module identified by `moduleName` so the runtime can instantiate that module's `AbilityStage`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onCreate
```
public open func onCreate(): Unit
```

- description:Registers the create callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onAcceptWant
```
public open func onAcceptWant(want: Want): String
```

- description:Registers the accept want callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:String

### onConfigurationUpdate
```
public open func onConfigurationUpdate(newConfig: AbilityConfiguration): Unit
```

- description:Registers the configuration update callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onMemoryLevel
```
public open func onMemoryLevel(level: MemoryLevel): Unit
```

- description:Registers the memory level callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onDestroy
```
public open func onDestroy(): Unit
```

- description:Registers the destroy callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

## Fields

- context:AbilityStageContext
