# CustomDialog

Custom dialog, controlled via CustomDialogController to show/hide.

---

## Offset
```
public struct Offset
```


## CustomDialogControllerOptions
```
public struct CustomDialogControllerOptions
```


## CustomDialogController
```
public class CustomDialogController <: RemoteData
```


### init

```
public init(options: CustomDialogControllerOptions)
```

- description:Constructs an instance with the given parameters.
- params:
  - options:option

### method
- `open()` / `close()` — open/close dialog
- `update(...)` — update configuration
- `isOpen()` — whether the dialog is open
