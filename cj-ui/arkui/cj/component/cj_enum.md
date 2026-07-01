# Shared enums (cj_enum)

The collection of shared enum type definitions used by all components is defined here. The table below groups enum names by domain with a one-line description; for specific enum values, refer to source (only names are listed, semantics not expanded).

> Search suggestion: locate by enum name. For enum values, search by enum name in source file `cj_enum.cj`.

---

## Layout and alignment
- `Alignment` — child content alignment mode (nine-grid)
- `HorizontalAlign` — horizontal alignment
- `VerticalAlign` — vertical alignment
- `FlexDirection` — flex layout main axis direction
- `FlexWrap` — flex layout wrap mode
- `FlexAlign` — main axis/cross axis alignment distribution
- `ItemAlign` — cross axis child item alignment
- `Direction` — layout direction (RTL/LTR)
- `Axis` — axis direction (horizontal/vertical)
- `Placement` — overlay placement mode
- `Edge` — edge (top/bottom/left/right)
- `EdgeEffect` — scroll-to-edge effect
- `ListItemAlign` — list item alignment
- `Sticky` / `StickyStyle` — snap effect/style
- `HitTestMode` — touch test mode

## Text
- `FontStyle` — font style (normal/italic)
- `FontWeight` — font weight
- `TextAlign` — text alignment
- `TextAlignStyle` — alignment style
- `TextOverflow` — overflow handling
- `TextCase` — letter case display
- `TextDecorationType` — decoration line type (underline/strikethrough etc.)
- `TextDecorationStyle` — decoration line style
- `TextBaseline` — text baseline
- `TextSelectable` / `TextSelectableMode` — whether text is selectable
- `EllipsisMode` — ellipsis mode (head/middle/tail)
- `WordBreak` — word break rule
- `LineBreakStrategy` — line break strategy
- `TextHeightAdaptivePolicy` — height adaptive strategy
- `TextSpanType` — text span type
- `TextResponseType` — text response type
- `TextDataDetectorType` — data recognition type (phone/URL/email etc.)
- `TextContentStyle` — text content style
- `CopyOptions` — copy option

## Image
- `ImageFit` — image scale mode
- `ImageRepeat` — image tile repeat
- `ImageRenderMode` — render mode (original/template)
- `ImageInterpolation` — interpolation algorithm
- `ImageSize` / `ImageType` — image size/type
- `ImageSpanAlignment` — inline image vertical alignment
- `ResourceType` — resource type

## Slide and scroll
- `ScrollDirection` — scroll direction
- `ScrollBarDirection` — scrollbar direction
- `ScrollState` — scroll state
- `ScrollSource` — scroll source
- `SwipeDirection` — swipe direction
- `SwipeEdgeEffect` — swipe edge effect
- `SwiperDisplayMode` — carousel display mode
- `SwiperNestedScrollMode` — carousel nested scroll mode
- `NestedScrollMode` — nested scroll mode
- `PanDirection` — pan direction

## Animation and transition
- `Curve` — animation curve
- `AnimationStatus` — animation state (play/pause)
- `FillMode` — animation fill mode
- `PlayMode` — play mode
- `GradientDirection` — gradient direction
- `RenderFit` — render fit
- `TransitionType` — transition type
- `Repetition` — repetition mode
- `SharedTransitionEffectType` — shared transition effect type

## Gesture and interaction
- `HoverEffect` — hover effect
- `GesturePriority` — gesture priority
- `GestureMask` — gesture mask
- `GestureMode` — gesture mode
- `GestureTypes` — gesture type
- `GestureJudgeResult` — gesture judge result
- `TouchType` — touch type
- `SourceType` — touch source type
- `MouseButton` / `MouseAction` — mouse button/action
- `KeySource` / `KeyType` / `ModifierKey` / `FunctionKey` — key source/key type/modifier key/function key
- `ClickEffectLevel` — click effect level
- `CrownAction` / `CrownSensitivity` — crown action/sensitivity
- `AccessibilityHoverType` — accessibility hover type

## State and display
- `Visibility` — visibility
- `BarState` — scrollbar/bar display state
- `BarPosition` / `BarMode` — bar position/mode
- `ShadowType` / `ShadowStyle` — shadow type/preset style
- `ColoringStrategy` — color sampling strategy
- `ThemeColorMode` — theme color mode
- `AdaptiveColor` — adaptive color
- `ForegroundBlurStyle` / `BlurStyleActivePolicy` — foreground blur style/activation strategy
- `BlendMode` / `BlendApplyType` — blend mode/apply type
- `CompositeOperation` — composite operation

## Component-specific
- `ToggleType` — toggle child type
- `SliderChangeMode` / `SliderStyle` — slider change mode/style
- `ProgressType` — progress type
- `NavigationType` — navigation type
- `PanelMode` / `PanelType` — panel mode/type
- `SideBarContainerType` / `SideBarPosition` — sidebar type/position
- `DataPanelType` — data chart type
- `ItemState` — step item state
- `RefreshStatus` — refresh state
- `SeekMode` / `PlaybackSpeed` — seek mode/playback speed
- `SelectStatus` — selection state
- `MarqueeUpdateStrategy` — marquee update strategy
- `XComponentType` — XComponent type
- `DialogButtonStyle` / `DialogAlignment` — dialog button style/alignment
- `MenuPreviewMode` / `MenuAlignType` / `MenuPolicy` — menu preview/alignment/policy
- `ArrowPosition` / `ArrowPointPosition` — arrow position
- `OptionWidthMode` — option width mode
- `ControlSize` — control size level
- `CheckBoxShape` — checkbox shape
- `Week` — day of week
- `ListItemGroupArea` — list item group area
- `RichEditorSpanType` / `RichEditorDeleteDirection` / `RichEditorResponseType` — rich text span type/delete direction/response type
- `SpanType` — span type
- `MixMode` — mix mode
- `TitleHeight` — title height level
- `ObscuredReasons` — obscured reasons
- `IlluminatedType` — highlight type
- `FoldStatus` / `AppRotation` — fold state/app rotation
- `EmbeddedType` — embedded type
- `WebDarkMode` — Web dark mode

## Input
- `EnterKeyType` — enter key type
- `InputType` — input type
- `ContentType` — autofill content type

## Shape and Canvas
- `ShapeType` — shape type
- `LineCapStyle` / `LineJoinStyle` — line cap/join style
- `OutlineStyle` — outline style
- `CanvasDirection` / `CanvasFillRule` — canvas direction/fill rule
- `QualityType` — quality type

## Relative layout and safe area
- `BarrierDirection` / `LocalizedBarrierDirection` — barrier direction (absolute/localized)
- `SafeAreaType` / `SafeAreaEdge` — safe area type/edge
- `LayoutSafeAreaType` / `LayoutSafeAreaEdge` — layout safe area type/edge
- `RelateType` — relation type
- `PixelRoundCalcPolicy` — pixel rounding strategy
- `BreakpointsReference` see [GridRow](./GridRow.md)

## Breakpoints
- `WidthBreakpoint` / `HeightBreakpoint` — width/height breakpoint

## Other
- `ResponseType` — response type
- `LengthMetricsUnit` — length metrics unit
- `SourceTool` — source tool
- `ContextType` — context type
- `IndexerAlign` — indexer alignment
- `MenuPreviewMode` — menu preview mode
