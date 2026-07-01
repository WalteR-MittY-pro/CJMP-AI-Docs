# Component Inspector (cj_component_id)

Utility functions to get component info by id and send events to components.

> Note:Not annotated with `@APILevel` metadata in source.

---

## getInspectorByKey
```
public func getInspectorByKey(id: String): String
```

- description:Returns the inspector by key.

## getInspectorTree
```
public func getInspectorTree(): String
```

- description:Returns the inspector tree.

## sendEventByKey
```
public func sendEventByKey(id: String, action: IntNative, params: String): Bool
```

- description:Sends an event of the given `action` to the component identified by `id`, with parameters encoded in `params`. Returns whether the event was delivered successfully.
- params:
  - id:component id
  - action:action code
  - params:parameter string
- return:whether successful

## sendTouchEvent
```
public func sendTouchEvent(event: TouchObject): Bool
```

- description:Dispatches the touch `event` to the focused component. Returns whether the event was delivered successfully.
- return:whether successful

## sendKeyEvent
```
public func sendKeyEvent(event: KeyEvent): Bool
```

- description:Dispatches the key `event` to the focused component. Returns whether the event was delivered successfully.
- return:whether successful

## sendMouseEvent
```
public func sendMouseEvent(event: MouseEvent): Bool
```

- description:Dispatches the mouse `event` to the focused component. Returns whether the event was delivered successfully.
- return:whether successful
