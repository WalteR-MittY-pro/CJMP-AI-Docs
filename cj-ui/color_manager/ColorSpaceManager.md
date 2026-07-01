# ColorSpaceManager

Defines a color space object and manages its key information

---

## API

### getColorSpaceName
```
public func getColorSpaceName(): ColorSpace
```

- description:Get the name of color space type.
- APILevel:12
- syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
- return:ColorSpace

### getWhitePoint
```
public func getWhitePoint(): Array<Float32>
```

- description:Get white point(x, y) of color space.
- APILevel:12
- syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
- return:Array<Float32>

### getGamma
```
public func getGamma(): Float32
```

- description:Get gamma value of color space.
- APILevel:12
- syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
- return:Float32
