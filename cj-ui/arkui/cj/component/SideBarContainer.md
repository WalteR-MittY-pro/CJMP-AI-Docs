# SideBarContainer

Side bar container, contains a collapsible side bar and a main content area.

---

## Types
- `Icons` — icon configuration (toggle button icon)
- `ButtonStyle` — buttonstyle
- `SideBarDividerStyle` — dividerstyle

## SideBarContainer
```
public class SideBarContainer <: ContainerBase
```


### init

```
public init(sideBar: () -> Unit, content: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - sideBar: side bar content builder function
  - content: main content builder function

### method（chainable, returns This）
- `sideBarWidth(value)` / `maxSideBarWidth(value)` / `minSideBarWidth(value)` — side bar width
- `showSideBar(value)` — whether to show the side bar
- `sideBarPosition(value)` — side bar position
- `showControlButton(value)` — display control button
- `controlButtonStyle(value)` — control button style
- `divider(value)` — divider
- `autoCollapse(value)` — auto collapse
- `onChange(callback)` — collapse state change callback
