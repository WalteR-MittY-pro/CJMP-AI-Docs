# ImageBitmap

public class ImageBitmap <: RemoteData

Bitmap object, used as the input source for Canvas `drawImage`.

## Properties

### width
```
public prop width: Float64
```

- description:Returns the width of the bitmap.

### height
```
public prop height: Float64
```

- description:Returns the height of the bitmap.

## API

### init
```
public init(src: String)
```

- description:Constructs an ImageBitmap from the image at the given `src` path/URI. Registers the instance with the RemoteDataManager.

### init
```
public init(date: PixelMap, unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT)
```

- description:Constructs an ImageBitmap from a `PixelMap` using the length-metrics `unit` (default `DEFAULT`). Registers the instance with the RemoteDataManager.

### init
```
public init(date: String, unit: LengthMetricsUnit)
```

- description:Constructs an ImageBitmap from the image at the given `date` path using the explicit length-metrics `unit`. Registers the instance with the RemoteDataManager.

### close
```
public func close(): Unit
```

- description:Releases the underlying native resources of this bitmap. Equivalent to `release()`.

> Note: The deprecated overloads `init(src: String, _: Float64, _: Float64)` and `init(src: String, _: Int64, _: Int64)` (both deprecated since API 14) are not documented here.
