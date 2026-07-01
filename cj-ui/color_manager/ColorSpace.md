# ColorSpace

Color space type enum, for ColorSpaceManager to mark the standard of color space used.

---

## API

### parse
```
public static func parse(cs: UInt32): ColorSpace
```

- description:Parses the input into a ColorSpace.
- APILevel:19
- syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
- return:ColorSpace

### toString
```
public func toString(): String
```

- description:Returns the string representation.
- APILevel:12
- syscap: "SystemCapability.Graphic.Graphic2D.ColorManager.Core"
- return:String

Enum

- Enum Values:UNKNOWN | ADOBE_RGB_1998 | DCI_P3 | DISPLAY_P3 | SRGB | CUSTOM | BT709 | BT601_EBU | BT601_SMPTE_C | BT2020_HLG | BT2020_PQ | P3_HLG | P3_PQ | ADOBE_RGB_1998_LIMIT | DISPLAY_P3_LIMIT | SRGB_LIMIT | BT709_LIMIT | BT601_EBU_LIMIT | BT601_SMPTE_C_LIMIT | BT2020_HLG_LIMIT | BT2020_PQ_LIMIT | P3_HLG_LIMIT | P3_PQ_LIMIT | LINEAR_P3 | LINEAR_SRGB | LINEAR_BT709 | LINEAR_BT2020 | DISPLAY_SRGB | DISPLAY_P3_SRGB | DISPLAY_P3_HLG | DISPLAY_P3_PQ
