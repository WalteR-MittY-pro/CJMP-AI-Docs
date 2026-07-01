# Navigation

Navigation container, manages page stack, supports push/pop/replace, includes single bar/split bar/adaptive mode.

---

## Types
- `NavigationMode` — navigatemodeenum（Stack/Split/Auto）
- `NavPathInfo` — router iteminfo（name/param/onShown/onHidden/...）
- `NavPathStack` — routerstack（pushPath/pop/replacePath/clear/...）

## Navigation
```
public class Navigation <: ContainerBase
```


### init

```
public init(pathStack: NavPathStack, ...)
```

- description:Constructs an instance with the given parameters.
### method（chainable, returns This）
- `title(value)` / `subtitle(value)` — title/subtitle
- `titleMode(value)` — title mode
- `navBarWidth(value)` / `navBarWidthRange(...)` — navigatebarwidth
- `mode(value)` — navigatemode
- `toolBar(...)` — toolbar
- `menus(...)` — menu
- `hideNavBar(value)` — hide navigation bar
- `navBarHiddenChange(...)` / `onNavBarStateChange(...)` — event
- `customNavContent(...)` — custom navigation bar content

## NavPathStack
```
public class NavPathStack <: RemoteData
```

- method:`pushPath(name/param)` / `pop()` / `popTo(name)` / `replacePath(...)` / `clear()` / `getAllPathName()` etc.

## NavDestination
```
public class NavDestination <: ContainerBase
```

