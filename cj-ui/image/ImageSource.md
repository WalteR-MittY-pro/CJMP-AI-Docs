# ImageSource

ImageSource instance.

---

## API

### createImageSource
```
public func createImageSource(buf: Array<UInt8>): ImageSource
```

- description:Creates a image source.
- APILevel:12
- syscap: "SystemCapability.Multimedia.Image.ImageSource"
- return:ImageSource

### createPixelMap
```
public func createPixelMap(options!: DecodingOptions = DecodingOptions()): PixelMap
```

- description:Creates a PixelMap object based on image decoding parameters.
- APILevel:12
- syscap: "SystemCapability.Multimedia.Image.ImageSource"
- return:PixelMap

### Release
```
public func Release(): Unit
```

- description:Releases an ImageSource instance and uses a promise to return the result.
- APILevel:12
- syscap: "SystemCapability.Multimedia.Image.ImageSource"
