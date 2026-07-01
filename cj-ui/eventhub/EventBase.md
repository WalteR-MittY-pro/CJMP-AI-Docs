# EventBase

Event base class. Provides `as0`..`as5` casts that narrow an `EventBase` to a typed `EventN<...>` of the desired arity.

---

## API

### as0
```
public func as0(): Event0
```

- description:Casts this `EventBase` to a zero-argument `Event0`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event0

### as1
```
public func as1<A>(): Event1<A>
```

- description:Casts this `EventBase` to a one-argument `Event1<A>`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event1<A>

### as2
```
public func as2<A1, A2>(): Event2<A1, A2>
```

- description:Casts this `EventBase` to a two-argument `Event2<A1, A2>`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event2<A1, A2>

### as3
```
public func as3<A1, A2, A3>(): Event3<A1, A2, A3>
```

- description:Casts this `EventBase` to a three-argument `Event3<A1, A2, A3>`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event3<A1, A2, A3>

### as4
```
public func as4<A1, A2, A3, A4>(): Event4<A1, A2, A3, A4>
```

- description:Casts this `EventBase` to a four-argument `Event4<A1, A2, A3, A4>`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event4<A1, A2, A3, A4>

### as5
```
public func as5<A1, A2, A3, A4, A5>(): Event5<A1, A2, A3, A4, A5>
```

- description:Casts this `EventBase` to a five-argument `Event5<A1, A2, A3, A4, A5>`.
- APILevel:12
- syscap: "SystemCapability.Ability.AbilityRuntime.Core"
- return:Event5<A1, A2, A3, A4, A5>
