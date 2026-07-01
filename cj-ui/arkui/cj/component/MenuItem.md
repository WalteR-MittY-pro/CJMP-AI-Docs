# MenuItem

Menu item component, serves as Menu child content, displays a clickable menu item.

> Note:The public symbols of this component are not annotated with `@APILevel` metadata in source, so APILevel/syscap rows are omitted in the sections below.

---

## init
```
public init(builder!: () -> Unit = { => })
```

- description:Constructs an instance with the given parameters.
- params:
  - builder: content builder function, default empty

```
public init(startIcon!: String, content!: String, endIcon!: String, labelInfo!: String, builder!: Option<() -> Unit> = None)
```

- params:
  - startIcon: start icon path
  - content: menu item text
  - endIcon: end icon path
  - labelInfo: label info text
  - builder: optional child content builder, default None

```
public init(startIcon!: AppResource, content!: AppResource, endIcon!: AppResource, labelInfo!: AppResource, builder!: Option<() -> Unit> = None)
```

- params:
  - startIcon: start icon resource
  - content: text resource
  - endIcon: end icon resource
  - labelInfo: label info resource
  - builder: optional child content builder

## selected
```
public func selected(value: Bool): This
```

- description:Sets the item's selected state. When `value` is `true` the item renders in its selected (checked) state. Returns `This` for chaining.
- params:
  - value:whether selected
- return:This

## selectIcon
```
public func selectIcon(value: Bool): This
```

- description:Sets the selected-state icon: `value` (Bool, `true` shows the default icon, `false` hides it) or an `AppResource` icon reference. Returns `This` for chaining.
- params:
  - value:whether to show
- return:This

```
public func selectIcon(value: AppResource): This
```

- params:
  - value:iconresource
- return:This

## contentFont
```
public func contentFont(size!: Length = 16.vp, weight!: FontWeight = FontWeight.Normal, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the menu item content font: `size` (default `16.vp`), `weight` (default `Normal`), `family` (default `"HarmonyOS Sans"`) and `style` (default `Normal`). Returns `This` for chaining.
- params:
  - size:font size，default 16vp
  - weight:font weight, default Normal
  - family:font family, default HarmonyOS Sans
  - style:font style, default Normal
- return:This

> Also has `family: AppResource` resource overload。

## contentFontColor
```
public func contentFontColor(value: ResourceColor): This
```

- description:Sets the menu item content text color to `value` (a `ResourceColor` literal or `AppResource` reference). Returns `This` for chaining.
- return:This

## labelFont
```
public func labelFont(size!: Length = 16.vp, weight!: FontWeight = FontWeight.Normal, family!: String = "HarmonyOS Sans", style!: FontStyle = FontStyle.Normal): This
```

- description:Sets the menu item label font: `size` (default `16.vp`), `weight` (default `Normal`), `family` (default `"HarmonyOS Sans"`) and `style` (default `Normal`). Returns `This` for chaining.
- return:This

> Also has `family: AppResource` resource overload。

## labelFontColor
```
public func labelFontColor(value: AppResource): This
```

- description:Sets the menu item label text color to `value` (an `AppResource` reference). Returns `This` for chaining.
- return:This

## onChange
```
public func onChange(callback: (Bool) -> Unit): This
```

- description:Registers the change callback.
- params:
  - callback:callback function
  - Bool:whether selected
- return:This
