# Grid

Grid container, arranges GridItem by row/column, supports scroll, drag, custom layout.

---

## Types
- `GridDirection` — grid direction enum
- `GridItemAlignment` — grid item alignment enum
- `EffectEdge` — effectedgeenum
- `EdgeEffectOptions` — edge effectoption
- `ItemDragInfo` — draginfo
- `ComputedBarAttribute` — computeproperty
- `OffsetOption` — offsetoption
- `GridLayoutOptions` — grid layout option (includes row count/column count and cross-item configuration)

## Grid
```
public class Grid <: ScrollableBase
```


### init

```
public init(scroller: Scroller = ..., layoutOptions: GridLayoutOptions = ..., child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - scroller:scroll controller
  - layoutOptions:layout option
  - child:child content

### method（chainable, returns This）
- `columnsTemplate(value)` / `rowsTemplate(value)` — column/row template
- `columnsGap(value)` / `rowsGap(value)` — column/rowspacing
- `scrollable(value)` — scroll direction
- `scrollBar(...)` / `scrollBarColor(...)` / `scrollBarWidth(...)` — scrollbar
- `edgeEffect(value, options)` — edge effect
- `cachedCount(value)` — cache count
- `enableScrollInteraction(value)` — interactive scroll
- `onScroll(...)` / `onScrollIndex(...)` / `onScrollStop(...)` / `onReachStart(...)` / `onReachEnd(...)` — scroll event
- `onItemDragStart(...)` / `onItemDragMove(...)` / `onItemDrop(...)` — dragevent
- `nestedScroll(value)` — nested scroll
