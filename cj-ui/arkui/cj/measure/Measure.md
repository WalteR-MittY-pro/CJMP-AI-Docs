# Measure

Text measurement class. Provides `MeasureText` for measuring the rendered width of a text string under given options.

---

## API

### MeasureText
```
public static func MeasureText(options: MeasureOptions): Float64
```

- description:Measures the width of the text configured by `options` (text content, font size, font style, etc.) and returns the resulting width in vp as a `Float64`.
- return:Float64

## Types

### MeasureOptions
```
public struct MeasureOptions
```

- Fields:init

### Size
```
public struct Size
```

- Fields:width, height
