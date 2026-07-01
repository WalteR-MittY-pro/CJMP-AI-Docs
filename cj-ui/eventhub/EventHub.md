# EventHub

Event bus. Provides `obtainEvent0`..`obtainEvent5` to obtain (creating if necessary) a typed event of the desired arity by name, and `get`/`get0`..`get5` to look up an existing event by name without creating one.

---

## API

### obtainEvent0
```
public func obtainEvent0(name: String): Event0
```

- description:Obtains (creating if necessary) the zero-argument `Event0` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event0

### obtainEvent1
```
public func obtainEvent1<A>(name: String): Event1<A>
```

- description:Obtains (creating if necessary) the one-argument `Event1<A>` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event1<A>

### obtainEvent2
```
public func obtainEvent2<A1, A2>(name: String): Event2<A1, A2>
```

- description:Obtains (creating if necessary) the two-argument `Event2<A1, A2>` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event2<A1, A2>

### obtainEvent3
```
public func obtainEvent3<A1, A2, A3>(name: String): Event3<A1, A2, A3>
```

- description:Obtains (creating if necessary) the three-argument `Event3<A1, A2, A3>` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event3<A1, A2, A3>

### obtainEvent4
```
public func obtainEvent4<A1, A2, A3, A4>(name: String): Event4<A1, A2, A3, A4>
```

- description:Obtains (creating if necessary) the four-argument `Event4<A1, A2, A3, A4>` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event4<A1, A2, A3, A4>

### obtainEvent5
```
public func obtainEvent5<A1, A2, A3, A4, A5>(name: String): Event5<A1, A2, A3, A4, A5>
```

- description:Obtains (creating if necessary) the five-argument `Event5<A1, A2, A3, A4, A5>` registered under `name`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event5<A1, A2, A3, A4, A5>

### get
```
public func get(s: String): EventBase
```

- description:Returns the `EventBase` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:EventBase

### get0
```
public func get0(s: String): Event0
```

- description:Returns the zero-argument `Event0` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event0

### get1
```
public func get1<A>(s: String): Event1<A>
```

- description:Returns the one-argument `Event1<A>` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event1<A>

### get2
```
public func get2<A1, A2>(s: String): Event2<A1, A2>
```

- description:Returns the two-argument `Event2<A1, A2>` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event2<A1, A2>

### get3
```
public func get3<A1, A2, A3>(s: String): Event3<A1, A2, A3>
```

- description:Returns the three-argument `Event3<A1, A2, A3>` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event3<A1, A2, A3>

### get4
```
public func get4<A1, A2, A3, A4>(s: String): Event4<A1, A2, A3, A4>
```

- description:Returns the four-argument `Event4<A1, A2, A3, A4>` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event4<A1, A2, A3, A4>

### get5
```
public func get5<A1, A2, A3, A4, A5>(s: String): Event5<A1, A2, A3, A4, A5>
```

- description:Returns the five-argument `Event5<A1, A2, A3, A4, A5>` registered under `s` (look-up only, does not create).
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event5<A1, A2, A3, A4, A5>
