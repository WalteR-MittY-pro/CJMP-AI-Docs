# RemoteView

public abstract class RemoteView <: FFIData

Abstract base class for custom views built across the native/CJ boundary. Subclasses implement `build()` (and override lifecycle hooks as needed) and the framework drives them via the `OHOSAceFrameworkRemoteView*` C entry points. `CustomView`, all controllers, `GestureHandler`, `CanvasRenderingContext2D`, etc. derive from `RemoteView` or its descendants.

## API

### init
```
public init()
```

- description:Default constructor; calls `super()` on `FFIData`.

### build
```
public func build(): Unit
```

- description:Abstract. Subclasses build their component tree here. Invoked by the framework via `OHOSAceFrameworkRemoteViewRender`.

### rerender
```
public open func rerender(): Unit
```

- description:Abstract hook for re-rendering the view. Default no-op; overridden by generated view code.

### purgeVariableDependenciesOnElmtId
```
public open func purgeVariableDependenciesOnElmtId(removedElmtId: Int64): Unit
```

- description:Abstract hook called when an element is removed; subclasses purge state dependencies on `removedElmtId`. Default no-op.

### Lifecycle hooks (overridable, default no-op)

#### aboutToAppear
```
protected open func aboutToAppear(): Unit
```

- description:Called when the view is about to appear. Override to perform initialisation that should happen before the view becomes visible. Default no-op.

#### onPageShow
```
protected open func onPageShow(): Unit
```

- description:Called when the host page becomes visible (e.g. navigated to or returned to the foreground). Default no-op.

#### onPageHide
```
protected open func onPageHide(): Unit
```

- description:Called when the host page becomes hidden (e.g. navigated away from or sent to the background). Default no-op.

#### onBackPress
```
protected open func onBackPress(): Bool
```

- description:Called when the back key/gesture is pressed while the view is active. Return `true` to consume the event and prevent default back navigation, `false` to let it propagate. Default returns `false`.
- return:Bool

#### updateWithJson
```
protected open func updateWithJson(json: String): Unit
```

- description:Updates the view state from the given `json` payload. Used by the framework to drive view updates from the native side. Default no-op.

#### onTransition
```
protected open func onTransition(): Unit
```

- description:Called when a page/transition event involves this view. Override to participate in shared-element or page transitions. Default no-op.

#### onAboutToRender
```
protected open func onAboutToRender(): Unit
```

- description:Called just before the view is rendered for the first time. Override to perform last-minute setup before the component tree is built. Default no-op.

#### onAfterRender
```
protected open func onAfterRender(): Unit
```

- description:Called just after the view has been rendered. Override to perform post-render bookkeeping. Default no-op.

#### aboutToDisappear
```
protected open func aboutToDisappear(): Unit
```

- description:Called when the view is about to disappear. Override to release resources or cancel tasks tied to the view's lifetime. Default no-op.

#### onAboutToBeDeleted
```
protected open func onAboutToBeDeleted(): Unit
```

- description:Called when the view is about to be deleted from the component tree. Override to perform final cleanup before deletion. Default no-op.

#### forceCompleteRerender
```
protected open func forceCompleteRerender(deep: Bool): Unit
```

- description:Forces a complete re-render of this view. When `deep` is `true`, the re-render recurses into child components; when `false`, only this view is re-rendered. Default no-op.

#### onDidBuild
```
protected open func onDidBuild(): Unit
```

- description:Called after `build()` completes. Override to perform post-build initialisation that depends on the constructed component tree. Default no-op.

#### aboutToReuseInternal
```
protected open func aboutToReuseInternal(params: ReuseParams): Unit
```

- description:Reuse hook invoked when this view is taken from the recycle pool and is about to be reused with the given `params`. Override to refresh the view from `params`. Default no-op.

#### aboutToRecycleInternal
```
protected open func aboutToRecycleInternal(): Unit
```

- description:Recycle hook invoked when this view is about to be returned to the recycle pool. Override to reset view state for later reuse. Default no-op.

#### recycleSelf
```
protected open func recycleSelf(params: String): Unit
```

- description:Recycles this view into the pool with the given `params` string as the reuse key. Default no-op.

> Note: This base class is not annotated with `@APILevel` metadata in source. This is internal infrastructure.
