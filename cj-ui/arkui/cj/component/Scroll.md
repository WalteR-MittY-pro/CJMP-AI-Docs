# Scroll

Scrollable container, supports sliding when content exceeds the viewport. Includes scroll controller and alignment/snap/animation/nested scroll options.

---

## Types
- `OffsetResult` — offset result
- `RectResult` — rectangle result
- `ScrollSnapOptions` — snapoption
- `ScrollAnimationOptions` — scrollanimationoption
- `NestedScrollOptions` — nested scrolloption
- `FadingEdgeOptions` — fading edgeoption
- `ScrollSnapAlign` — snapalignmentenum
- `ScrollAlign` — scrollalignmentenum
- `ContentClipMode` — content clip modeenum

## ScrollableBase
```
public abstract class ScrollableBase <: ContainerBase
```


## Scroll
```
public class Scroll <: ScrollableBase
```


### init

```
public init(scroller!: Scroller = Scroller(), child: () -> Unit)
```

- description:Constructs an instance with the given parameters.
- APILevel:16（per source）
- params:
  - scroller:scroll controller
  - child:child content

### method（chainable, returns This）
- `scrollable(scrollDirection, ...)` — scroll direction
- `scrollBar(...)` / `scrollBarColor(...)` / `scrollBarWidth(...)` — scrollbar
- `edgeEffect(value, options)` — edge effect
- `onScroll(callback)` / `onScrollFrameBegin(...)` / `onScrollStop(...)` / `onWillScroll(...)` — scroll event
- `onReachStart(...)` / `onReachEnd(...)` / `onScrollEdge(...)` — edge reach event
- `enableScrollInteraction(value)` — whether scroll is interactive
- `nestedScroll(value)` — nested scroll
- `scrollSnap(value)` — snap
- `fadingEdge(value)` — fading edge
- `layoutStyle(...)` — layout style

## Scroller
```
public class Scroller <: BaseScroller
```


### method
- `scrollTo(x, y)` / `scrollBy(dx, dy)` — scroll to / scroll offset
- `currentOffset()` — currentoffset
- `scrollToIndex(value, ...)` — scroll to specified child item
- `scrollerInfo(...)` — scroll info
