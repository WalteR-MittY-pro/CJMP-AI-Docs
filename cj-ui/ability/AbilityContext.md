# AbilityContext

Ability runtime context, provides file directory access and startAbility/terminateSelf etc. capabilities.

---

## API

### getStageContext
```
public func getStageContext(abilityContext: AbilityContext): StageContext
```

- description:Returns the stage context.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:StageContext

### init
```
init(id: Int64)
```

- description:Constructs an instance with the given parameters.

### startAbility
```
public func startAbility(want: Want): Future<Unit>
```

- description:Starts an ability described by `want`. Returns a `Future` that completes with `Unit` once the target ability has been started.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Future<Unit>

### terminateSelf
```
public func terminateSelf(): Future<Unit>
```

- description:Terminates the current ability. Returns a `Future` that completes with `Unit` once the termination has completed.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Future<Unit>

## Fields

- filesDir:String
