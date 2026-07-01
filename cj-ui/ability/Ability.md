# Ability

UIAbility base class, defines lifecycle callbacks (onCreate/onDestroy/onWindowStageCreate etc.) and provides start Want access.

---

## API

### onCreate
```
public open func onCreate(want: Want, launchParam: LaunchParam): Unit
```

- description:Registers the create callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onDestroy
```
public open func onDestroy(): Unit
```

- description:Registers the destroy callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onWindowStageCreate
```
public open func onWindowStageCreate(windowStage: WindowStage): Unit
```

- description:Registers the window stage create callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onWindowStageDestroy
```
public open func onWindowStageDestroy(): Unit
```

- description:Registers the window stage destroy callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onForeground
```
public open func onForeground(): Unit
```

- description:Registers the foreground callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onBackground
```
public open func onBackground(): Unit
```

- description:Registers the background callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onBackPressed
```
public open func onBackPressed(): Bool
```

- description:Registers the back pressed callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Bool

### onWindowStageWillDestroy
```
public open func onWindowStageWillDestroy(windowStage: WindowStage): Unit
```

- description:Registers the window stage will destroy callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onNewWant
```
public open func onNewWant(want: Want, launchParams: LaunchParam): Unit
```

- description:Registers the new want callback.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onContinue
```
public open func onContinue(wantParams: String): OnContinueResult
```

- description:Registers the continue callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:OnContinueResult

### onPrepareToTerminate
```
public open func onPrepareToTerminate(): Bool
```

- description:Registers the prepare to terminate callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Bool

### onSaveState
```
public open func onSaveState(reason: StateType, wantParam: String): OnSaveResult
```

- description:Registers the save state callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:OnSaveResult

### onShare
```
public open func onShare(wantParam: String): Unit
```

- description:Registers the share callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"

### onDump
```
public open func onDump(params: Array<String>): Array<String>
```

- description:Registers the dump callback.
- APILevel:18
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Array<String>

## Fields

- launchWant:Want
- lastRequestWant:Want
- context:AbilityContext

## Types

### LaunchParam
```
public struct LaunchParam
```

- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
