# Tabs

tab container，contains TabContent child items and tab bar，supports multiple tab styles and switching animations。

---

## Types
- `ScrollableBarModeOptions` — scrollable tab bar option
- `BarGridColumnOptions` — tab bar grid option
- `TabsAnimationEvent` — switchanimationevent
- `TabContentTransitionProxy` — content switch proxy
- `TabContentAnimatedTransition` — customswitchanimation
- `DividerStyle` — dividerstyle
- `IndicatorStyle` — indicatorstyle
- `BoardStyle` — board style
- `LabelStyle` — labelstyle
- `Padding` / `LocalizedPadding` — padding
- `TabBarIconStyle` — iconstyle
- `LayoutStyle` / `LayoutMode` — layout style/modeenum
- `AnimationMode` — animationmodeenum
- `SelectedMode` — selectedmodeenum

## TabBar style
- `SubTabBarStyle` — childtabbarstyle
- `BottomTabBarStyle` — bottomtabbarstyle

## Tabs
```
public class Tabs <: ContainerBase
```


### init

```
public init(...barPosition/barMode/barWidth/barHeight/index/controller/content...)
```

- description:Constructs an instance with the given parameters.
### method（chainable, returns This）
- `barMode(value)` / `barPosition(value)` — tabbarmode/position
- `barWidth(value)` / `barHeight(value)` — tabbarwidth and height
- `scrollable(value)` — tab bar scrollable
- `animationMode(value)` — switchanimationmode
- `divider(value)` / `indicator(value)` / `board(value)` — divider/indicator/board
- `onChange(callback)` / `onTabBarClick(callback)` / `onAnimationStart(...)` / `onAnimationEnd(...)` — event
- `customContentTransition(value)` — customswitchanimation

## TabsController
```
public class TabsController <: RemoteData
```

- method:`changeIndex(index)` switchtab

## TabContent
```
public class TabContent <: ContainerBase
```

- init:`TabContent(child: () -> Unit)`
- method:`tabBar(...)` settingcorresponds totabbar
