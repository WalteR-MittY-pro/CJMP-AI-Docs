# AlertDialog

Alert dialog, popped up via static method `show`, supports confirm button, double button, custom button group, three forms, with optional shadow.

---

## show
```
public static func show(alertDialog: AlertDialogParamWithConfirm): Unit
```

- description:Shows an alert dialog with a single confirm button, configured by `alertDialog`.
- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog: dialog parameter, AlertDialogParamWithConfirm (includes title/info/confirm button)

```
public static func show(alertDialog: AlertDialogParamWithConfirm, shadow: ActionSheetShadowOptions): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowoption，ActionSheetShadowOptions

```
public static func show(alertDialog: AlertDialogParamWithConfirm, shadow: ShadowStyle): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowstyle，ShadowStyle enum

```
public static func show(alertDialog: AlertDialogParamWithButtons): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog: dialog parameter, AlertDialogParamWithButtons (includes primaryButton/secondaryButton)

```
public static func show(alertDialog: AlertDialogParamWithButtons, shadow: ActionSheetShadowOptions): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowoption

```
public static func show(alertDialog: AlertDialogParamWithButtons, shadow: ShadowStyle): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowstyle

```
public static func show(alertDialog: AlertDialogParamWithOptions): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog: dialog parameter, AlertDialogParamWithOptions (includes buttons array and buttonDirection)

```
public static func show(alertDialog: AlertDialogParamWithOptions, shadow: ActionSheetShadowOptions): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowoption

```
public static func show(alertDialog: AlertDialogParamWithOptions, shadow: ShadowStyle): Unit
```

- APILevel:16
- syscap: "SystemCapability.ArkUI.ArkUI.Full"
- params:
  - alertDialog:dialogparameter
  - shadow:shadowstyle

> Parameter types `AlertDialogParamWithConfirm` / `AlertDialogParamWithButtons` / `AlertDialogParamWithOptions` and button option `AlertDialogButtonOptionsV2` are defined in this component's source file, used for configuring title, info, button text and callback, etc.
