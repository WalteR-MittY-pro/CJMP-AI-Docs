# PromptAction

Dialog and tooltip action class, provides `showToast`/`showDialog`/`showActionMenu`/`openCustomDialog`/`closeCustomDialog`, etc.

---

## API

### showToast
```
public static func showToast(message!: String, duration!: Int32 = 1500, bottom!: String = "80vp", showMode!: ToastShowMode = ToastShowMode.Default): Unit
```

- description:Shows a toast message for `duration` ms (default 1500), positioned `bottom` from the bottom of the screen (default `80vp`), with display `showMode` (default `Default`).

### showDialog
```
public static func showDialog(title!: String = "", message!: String = "", buttons!: Array<ButtonInfo>, callback!: ShowDialogCallBack = defaultCallback)
```

- description:Shows a modal dialog with the given `title`, `message` and `buttons`. `callback` is invoked with the index of the button tapped.

### showActionMenu
```
public static func showActionMenu(title!: String = "", buttons!: Array<ButtonInfo>, callback!: ShowActionMenuCallBack = defaultCallback)
```

- description:Shows an action menu with the given `title` and `buttons`. `callback` is invoked with the index of the button tapped.

### openCustomDialog
```
public static func openCustomDialog(options: CustomDialogOptions, callBack: (Int32) -> Unit): Unit
```

- description:Opens a custom dialog configured by `options`. `callBack` is invoked with the dialog's status code.

### openCustomDialogWithOption
```
public static func openCustomDialogWithOption(options: CustomDialogOptions, callBack: (Int32) -> Unit): Unit
```

- description:Opens a custom dialog configured by `options` (with extended options) and invokes `callBack` with the dialog's status code.

### closeCustomDialog
```
public static func closeCustomDialog(dialogId: Int32): Unit
```

- description:Closes the custom dialog identified by `dialogId`.

### showToast
```
public static func showToast(option: ShowToastOptions): Unit
```

- description:Shows a toast configured by the `option` bag.

### showDialog
```
public static func showDialog(option: ShowDialogOptions, callback!: ShowDialogCallBack = defaultCallback)
```

- description:Shows a modal dialog configured by the `option` bag. `callback` is invoked with the index of the button tapped.

### showActionMenu
```
public static func showActionMenu(option: ActionMenuOptions, callback!: ShowActionMenuCallBack = defaultCallback)
```

- description:Shows an action menu configured by the `option` bag. `callback` is invoked with the index of the button tapped.
