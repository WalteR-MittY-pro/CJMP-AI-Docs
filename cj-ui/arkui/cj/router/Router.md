# Router

page router class，provides push/back/getParams/pushUrl etc.navigateability。

---

## API

### push
```
public static func push(url!: String, params!: String = "")
```

- description:Pushes a new page stack entry with the given `url` and optional `params` string.

### back
```
public static func back(url!: String, params!: String = "")
```

- description:Navigates back to the page identified by `url`, passing the optional `params` string to it.

### back
```
public static func back()
```

- description:Navigates back to the previous page in the stack.

### back
```
public static func back(index!: Int32, params!: String = "")
```

- description:Navigates back `index` pages in the stack, passing the optional `params` string to the resulting page.

### getParams
```
public static func getParams(): Option<String>
```

- description:Returns the params string of the current page, or `None` if there are no params.
- return:Option<String>

### pushUrl
```
public static func pushUrl(url!: String, params!: String = "", callback!: ((Option<Int32>) -> Unit))
```

- description:Pushes a new page with the given `url` and `params`. Invokes `callback` with the error code (or `None` on success) when the push completes.

### pushUrl
```
public static func pushUrl(url!: String, params!: String = "", mode!: RouterMode, callback!: ((Option<Int32>) -> Unit))
```

- description:Pushes a new page with the given `url`, `params` and `mode` (`Standard` or `Single`). Invokes `callback` with the error code (or `None` on success) when the push completes.

### replaceUrl
```
public static func replaceUrl(url!: String, params!: String = "", callback!: ((Option<Int32>) -> Unit))
```

- description:Replaces the current page with one identified by `url` and `params`. Invokes `callback` with the error code (or `None` on success) when the replace completes.

### replaceUrl
```
public static func replaceUrl(url!: String, params!: String = "", mode!: RouterMode, callback!: ((Option<Int32>) -> Unit))
```

- description:Replaces the current page with one identified by `url`, `params` and `mode` (`Standard` or `Single`). Invokes `callback` with the error code (or `None` on success) when the replace completes.

### clear
```
public static func clear()
```

- description:Removes all page stack entries except the first (root) page.

### getLength
```
public static func getLength(): String
```

- description:Returns the number of pages in the stack, as a string.
- return:String

### hideAlertBeforeBackPage
```
public static func hideAlertBeforeBackPage()
```

- description:Disables the alert dialog that was previously set by `showAlertBeforeBackPage` so subsequent back navigation does not prompt the user.

### showAlertBeforeBackPage
```
public static func showAlertBeforeBackPage(message: String, callback: ((Option<Int32>) -> Unit))
```

- description:Enables an alert dialog with `message` to be shown before back navigation. `callback` is invoked with the user's choice (e.g. confirm/cancel) before the navigation proceeds.

### getState
```
public static func getState(): RouterState
```

- description:Returns the current `RouterState` (page stack state, including index and name).
- return:RouterState

### getStateByIndex
```
public static func getStateByIndex(index: Int32): Option<RouterState>
```

- description:Returns the state by index.
- return:Option<RouterState>

### getStateByUrl
```
public static func getStateByUrl(url: String): ArrayList<RouterState>
```

- description:Returns the state by url.
- return:ArrayList<RouterState>

## Types

### RouterMode
```
public enum RouterMode
```

- Enum Values:Standard | Single

### RouterState
```
public struct RouterState
```

- Fields:init
