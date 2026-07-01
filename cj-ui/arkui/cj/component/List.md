# List

List container, vertically arranged ListItem/ListItemGroup, supports lazy loading, snap, scroll, drag.

---

## Types
- `VisibleListContentInfo` — visible content info

## ListScroller
```
public class ListScroller <: BaseScroller
```


## List
```
public class List <: ScrollableBase
```


### init

```
public init(space: Length = 0.vp, initialIndex: Int32 = 0, scroller: ListScroller = ..., child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- params:
  - space:child item spacing
  - initialIndex:initialindex
  - scroller: list controller
  - child:child content

### method（chainable, returns This）
- `lanes(value)` — columncount
- `scrollable(value)` — scroll direction
- `scrollBar(...)` / `scrollBarColor(...)` / `scrollBarWidth(...)` — scrollbar
- `edgeEffect(value, options)` — edge effect
- `divider(value)` — divider
- `sticky(value)` — snap
- `editMode(value)` — editmode
- `chainAnimation(value)` — chain animation
- `cachedCount(value)` — cache count
- `alignListItem(value)` — list item alignment
- `onScroll(...)` / `onScrollIndex(...)` / `onScrollStop(...)` / `onReachStart(...)` / `onReachEnd(...)` — scroll event
- `onItemMove(...)` / `onItemDelete(...)` — dragevent
- `nestedScroll(value)` — nested scroll
