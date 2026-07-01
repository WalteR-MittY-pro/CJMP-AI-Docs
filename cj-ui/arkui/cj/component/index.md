# arkui / component

ArkUI component library API reference. Each component corresponds to a detailed document (L2); this page only lists the feature catalog for easy search and navigation.

> Progressive disclosure: This page only provides "what exists + one-line description"; for specific signatures/parameters/return values, please refer to the corresponding component document.

---

## Basic components
- [Blank](./Blank.md) — blank placeholder
- [Divider](./Divider.md) — divider
- [LoadingProgress](./LoadingProgress.md) — loading progress animation
- [Rating](./Rating.md) — rating bar
- [Gauge](./Gauge.md) — gauge dial
- [Marquee](./Marquee.md) — marquee
- [Badge](./Badge.md) — badge
- [QRCode](./QRCode.md) — QR code
- [Hyperlink](./Hyperlink.md) — hyperlink
- [Progress](./Progress.md) — progress bar
- [DataPanel](./DataPanel.md) — data proportion chart

## Text and spans
- [Text](./Text.md) — text
- [Span](./Span.md) — text span
- [RichText](./RichText.md) — HTML rich text
- [ImageSpan](./ImageSpan.md) — inline image span
- [SymbolSpan](./SymbolSpan.md) — symbol font span

## Input
- [TextInput](./TextInput.md) — single-line input box
- [TextArea](./TextArea.md) — multi-line input box
- [Search](./Search.md) — search box
- [RichEditor](./RichEditor.md) + [RichEditorController](./RichEditorController.md) — rich text editor
- [TextClock](./TextClock.md) — text clock
- [TextTimer](./TextTimer.md) — text timer

## Selection and toggle
- [Checkbox](./Checkbox.md) / [CheckboxGroup](./CheckboxGroup.md) — checkbox/checkbox group
- [Radio](./Radio.md) — radio button
- [Toggle](./Toggle.md) — toggle switch
- [Select](./Select.md) — dropdown select
- [Counter](./Counter.md) — counter
- [DatePicker](./DatePicker.md) — date picker
- [TextPicker](./TextPicker.md) — text picker
- [CalendarPicker](./CalendarPicker.md) — calendar picker
- [PatternLock](./PatternLock.md) — pattern password lock
- [AlphabetIndexer](./AlphabetIndexer.md) — alphabet indexer bar

## Layout
- [Column](./Column.md) / [Row](./Row.md) — vertical/horizontal linear layout
- [Stack](./Stack.md) — stack
- [Flex](./Flex.md) — flex layout
- [ColumnSplit](./ColumnSplit.md) / [RowSplit](./RowSplit.md) — split layout
- [RelativeContainer](./RelativeContainer.md) — relative layout
- [GridCol](./GridCol.md) / [GridRow](./GridRow.md) — grid column/grid row
- [SideBarContainer](./SideBarContainer.md) — sidebar
- [Panel](./Panel.md) — drawer panel

## List / scroll / carousel / tab / navigation / waterfall
- [List](./List.md) / [ListItem](./ListItem.md) / [ListItemGroup](./ListItemGroup.md) — list
- [Grid](./Grid.md) / [GridItem](./GridItem.md) — grid
- [Scroll](./Scroll.md) / [ScrollBar](./ScrollBar.md) — scroll container/scrollbar
- [Swiper](./Swiper.md) — carousel
- [Tabs](./Tabs.md) — tabs
- [Navigation](./Navigation.md) / [NavDestination](./NavDestination.md) — navigation
- [WaterFlow](./WaterFlow.md) — waterfall flow

## Image and media
- [Image](./Image.md) — image
- [ImageAnimator](./ImageAnimator.md) — frame animation
- [Video](./Video.md) — video
- [SymbolGlyph](./SymbolGlyph.md) — symbol font icon
- [XComponent](./XComponent.md) — custom drawing
- [ImageBitmap](./ImageBitmap.md) / [ImageData](./ImageData.md) — bitmap/pixel data

## Shape and Canvas
- [Circle](./Circle.md) / [Ellipse](./Ellipse.md) — circle/ellipse
- [Line](./Line.md) / [Polyline](./Polyline.md) / [Polygon](./Polygon.md) — line/polyline/polygon
- [Rect](./Rect.md) / [Path](./Path.md) / [Shape](./Shape.md) — rectangle/path/shape parent container
- [Canvas](./Canvas.md) + [CanvasRenderingContext2D](./CanvasRenderingContext2D.md) — canvas and 2D context
- [CanvasPattern](./CanvasPattern.md) / [Path2D](./Path2D.md) — pattern/path object
- [OffscreenCanvas](./OffscreenCanvas.md) + [OffscreenCanvasRenderingContext2D](./OffscreenCanvasRenderingContext2D.md) — offscreen canvas
- [Matrix2D](./Matrix2D.md) — 2D transform matrix

## Dialogs and menus
- [AlertDialog](./AlertDialog.md) — alert dialog
- [ActionSheet](./ActionSheet.md) — list selection dialog
- [CustomDialog](./CustomDialog.md) — custom dialog
- [Menu](./Menu.md) / [MenuItem](./MenuItem.md) / [MenuItemGroup](./MenuItemGroup.md) — menu
- [ContextMenu](./ContextMenu.md) — context menu control

## Animation / transition / gesture
- [TransitionEffect](./TransitionEffect.md) — component transition animation effect
- [PageTransition](./PageTransition.md) — page transition animation effect
- [Gesture (cj_gesture)](./cj_gesture.md) — gesture events and gesture definitions
- [Animation parameters (cj_animate_param)](./cj_animate_param.md) — AnimateParam
- [View context (cj_view_context)](./cj_view_context.md) — animateTo

## Control and utilities
- [CursorControl](./CursorControl.md) — mouse cursor control
- [FocusControl](./FocusControl.md) — focus control
- [Inspector (cj_component_id)](./cj_component_id.md) — component info and event injection
- [Unit convert (cj_pixel_unit_convert)](./cj_pixel_unit_convert.md) — vp/fp/lpx to/from px
- [SubmitEvent](./SubmitEvent.md) — input submit event
- [ProgressMask](./ProgressMask.md) — progress mask

## Base classes and infrastructure
- [ViewBase](./ViewBase.md) — component root base class (common size/border/event methods)
- [ContainerBase](./ContainerBase.md) — container base class
- [ComponentBase](./ComponentBase.md) — component interface base class
- [View](./View.md) / [ViewBuilder](./ViewBuilder.md) / [CustomView](./CustomView.md) — custom view
- [RemoteView](./RemoteView.md) — remote view base class (id management)
- [Recycle](./Recycle.md) / [RecycleManager](./RecycleManager.md) — recycling
- [FakeComponent](./FakeComponent.md) / [PlatformView](./PlatformView.md) — placeholder/platform native view
- [If](./If.md) / [ForEach](./ForEach.md) / [LazyForEach](./LazyForEach.md) — control flow
- [Data source (cj_data_source)](./cj_data_source.md) / [Interaction events (cj_interactable_view)](./cj_interactable_view.md) / [Shared transition options](./cj_shared_trasition_optin.md)
- [View type defines (cj_view_typedef)](./cj_view_typedef.md) — dialog/Sheet/border etc. option types
- [CJEntry](./CJEntry.md) — page entry

## Shared enums
- [Shared enums (cj_enum)](./cj_enum.md) — shared enum collection definitions for all components (approx. 150)

## Not enabled
- [Web](./Web.md) — Web page component (source currently commented out, not in active API; see webview subsystem)

## Internal stubs (not user-facing API)
- [cj_view_ffi](./cj_view_ffi.md) / [cj_lambda_invoker_impl](./cj_lambda_invoker_impl.md) / [AceLog](./AceLog.md) / [cj_util](./cj_util.md) / [cj_interactable_view_ffi](./cj_interactable_view_ffi.md)
