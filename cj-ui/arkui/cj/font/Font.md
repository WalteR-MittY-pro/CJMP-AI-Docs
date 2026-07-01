# Font

Font management class, provides font registration and system font list querying.

---

## API

### getUIFontConfig
```
public static func getUIFontConfig(): UIFontConfig
```

- description:Returns the current UI font configuration.
- return:UIFontConfig

### registerFont
```
public static func registerFont(familyName!: String, familySrc!: String): Unit
```

- description:Registers a custom font with the given `familyName` from the source path `familySrc`.

### registerFont
```
public static func registerFont(familyName!: AppResource, familySrc!: AppResource): Unit
```

- description:Registers a custom font with `familyName` and `familySrc` resolved from `AppResource` references.

### getSystemFontList
```
public static func getSystemFontList(): Array<String>
```

- description:Returns the list of system font family names.
- return:Array<String>

### getFontByName
```
public static func getFontByName(fontName: String): ?FontInfo
```

- description:Returns the `FontInfo` for the font named `fontName`, or `None` if no such font exists.
- return:?FontInfo
