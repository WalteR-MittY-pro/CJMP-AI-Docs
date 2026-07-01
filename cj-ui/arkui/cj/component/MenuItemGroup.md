# MenuItemGroup

Menu item group container, used as child content for Menu, provides unified header/footer for a group of MenuItems.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(header!: String, footer!: String, child!: () -> Unit = { => })
```

- description:Constructs an instance with the given parameters.
- params:
  - header:headertext
  - footer:footertext
  - child:child content builder function，defaultempty

```
public init(header!: AppResource, footer!: AppResource, child!: () -> Unit = { => })
```

- params:
  - header:headerresource
  - footer:footerresource
  - child:child content builder function

```
public init(header!: () -> Unit, footer!: () -> Unit, child!: () -> Unit = { => })
```

- params:
  - header:header builder function
  - footer:footer builder function
  - child:child content builder function
