# PageTransition

page transition animation effect，configures page enter/exit animation。

---

## enum
- `RouteType` — routertype（Push/Pop/None）
- `SlideEffect` — slideeffect

## PageTransitionOptions
```
public struct PageTransitionOptions
```


## PageTransitionEnter
```
public class PageTransitionEnter <: CommonTransition
```

- method:`duration(...)` / `.delay(...)` / `.curve(...)` / `.translate(...)` / `.scale(...)` / `.rotate(...)` / `.onEnter(...)` / `.onExit(...)` etc.

> Declared using `pageTransition(...)` at the top level of an @Entry page.

## PageTransitionExit
```
public class PageTransitionExit <: CommonTransition
```

- method:`duration(...)` / `.delay(...)` / `.curve(...)` / `.translate(...)` / `.scale(...)` / `.rotate(...)` / `.onEnter(...)` / `.onExit(...)` etc.

> Declared using `pageTransition(...)` at the top level of an @Entry page.
