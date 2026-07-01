# TestRunner

test runnerbase class，provides onRun/onPrepare callbacks。

---

## API

### registerCreator
```
public static func registerCreator(name: String, creator: () -> TestRunner): Unit
```

- description:Registers a `creator` factory under the given `name` so the test framework can instantiate a `TestRunner` by name.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onRun
```
public open func onRun(): Unit
```

- description:Registers the run callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onPrepare
```
public open func onPrepare(): Unit
```

- description:Registers the prepare callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
