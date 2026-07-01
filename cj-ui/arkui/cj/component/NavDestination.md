# NavDestination

Navigation target page, used as the Navigation router target container.

---

## NavDestinationContext
```
public struct NavDestinationContext
```


## NavDestination
```
public class NavDestination <: ContainerBase
```


### init

```
public init(child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
### method（chainable, returns This）
- `title(value)` / `subtitle(value)` — title/subtitle
- `titleMode(value)` — title mode
- `hideTitle(value)` / `hideBackButton(value)` — hide title/back button
- `menus(...)` / `toolBar(...)` — menu/toolbar
- `customNavContent(...)` — custom navigation bar content
- `onShown(...)` / `onHidden(...)` / `onBackPressed(...)` — show/hide/back event
