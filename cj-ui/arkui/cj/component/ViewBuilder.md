# ViewBuilder

public class ViewBuilder

View builder, works with CustomView to bind state-driven build functions.

> Note:Not annotated with `@APILevel` metadata in source.

---

## LegalCallCheck
```
public class LegalCallCheck
```


## bind
```
public func bind(builder: (CustomView) -> ViewBuilder, thisView: CustomView)
```

- description:Binds the no-argument `builder` to `thisView` so that the framework invokes `builder(thisView)` whenever the view is (re)built. Subsequent overloads bind builders that take additional `ObservedProperty<T1>..T5` arguments, allowing the build function to read observed state without manual subscription.

```
public func bind<T1>(builder: (CustomView, ObservedProperty<T1>) -> ViewBuilder, thisView: CustomView)
```


```
public func bind<T1, T2>(builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>) -> ViewBuilder, thisView: CustomView)
```


```
public func bind<T1, T2, T3>(builder: (CustomView, ObservedProperty<T1>, ObservedProperty<T2>, ObservedProperty<T3>) -> ViewBuilder, thisView: CustomView)
```
