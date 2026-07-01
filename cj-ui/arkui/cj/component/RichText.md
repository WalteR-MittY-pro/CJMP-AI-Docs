# RichText

Rich text component, renders HTML fragment content.

---

## init
```
public init(content: String)
```

- description:Constructs an instance with the given parameters.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - content: HTML content string

## onStart
```
public func onStart(callback: () -> Unit): This
```

- description:Registers the start callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This

## onComplete
```
public func onComplete(callback: () -> Unit): This
```

- description:Registers the complete callback.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - callback:callback function
- return:This
