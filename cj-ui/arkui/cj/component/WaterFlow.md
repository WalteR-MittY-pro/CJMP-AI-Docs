# WaterFlow

Waterfall flow container, supports unequal height/unequal width flow layout, contains FlowItem child items and sections.

---

## Types
- `SectionOptions` — section options
- `WaterFlowSections` — section controller
- `WaterFlowDirection` — direction enum
- `WaterFlowLayoutMode` — layout mode enum

## FlowItem
```
public class FlowItem <: ContainerBase
```

- init:`FlowItem(child: () -> Unit)`

## WaterFlow
```
public class WaterFlow <: ScrollableBase
```


### init

```
public init(...scroller/layoutOptions/child...)
```

- description:Constructs an instance with the given parameters.
### method (chainable, returns This)
- `columnsTemplate(value)` / `rowsTemplate(value)` — column/row template
- `columnsGap(value)` / `rowsGap(value)` — column/row spacing
- `scrollable(value)` / `scrollBar(...)` / `edgeEffect(...)` — scroll related
- `nestedScroll(value)` — nested scroll
- `onReachStart(...)` / `onReachEnd(...)` / `onScrollStop(...)` — scroll event
- `onItemDragStart(...)` / `onItemDrop(...)` — drag event
