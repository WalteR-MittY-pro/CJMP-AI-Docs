# ImageData

public class ImageData <: RemoteData

Image pixel data, used for Canvas pixel read/write (`getImageData` / `putImageData`).

## Properties

### width
```
public prop width: Int32
```

- description:Returns the width of the image data in pixels.

### height
```
public prop height: Int32
```

- description:Returns the height of the image data in pixels.

### data
```
public prop data: Array<UInt8>
```

- description:Returns the RGBA pixel buffer as a `UInt8` array of size `width * height * 4`.

## API

### init
```
public init(
    width: Float64,
    height: Float64,
    data!: Array<UInt8>,
    unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT
)
```

- description:Constructs an ImageData of the given `width`/`height` initialised from the `data` pixel buffer, using the length-metrics `unit` (default `DEFAULT`). Registers the instance with the RemoteDataManager.

### init
```
public init(
    width: Float64,
    height: Float64,
    unit!: LengthMetricsUnit = LengthMetricsUnit.DEFAULT
)
```

- description:Constructs an ImageData of the given `width`/`height` with an empty (zeroed) pixel buffer, using the length-metrics `unit` (default `DEFAULT`). Registers the instance with the RemoteDataManager.
