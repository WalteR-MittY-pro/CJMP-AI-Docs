# Pixel unit convert (cj_pixel_unit_convert)

Conversion functions between length units (vp/fp/lpx) and physical pixels (px). Each function returns `Option.None` when the input `Length` is not in the expected source unit or the underlying conversion yields NaN; otherwise it returns `Option.Some` wrapping the converted `Length`.

> Note:Not annotated with `@APILevel` metadata in source.

---

## vp2px
```
public func vp2px(value: Length): Option<Length>
```

- description:Converts a vp `Length` value to physical pixels (px). Returns `None` if `value` is not in vp or the conversion is NaN; otherwise returns `Some(px)`.

## px2vp
```
public func px2vp(value: Length): Option<Length>
```

- description:Converts a px `Length` value to vp. Returns `None` if `value` is not in px or the conversion is NaN; otherwise returns `Some(vp)`.

## fp2px
```
public func fp2px(value: Length): Option<Length>
```

- description:Converts an fp `Length` value to physical pixels (px). Returns `None` if `value` is not in fp or the conversion is NaN; otherwise returns `Some(px)`.

## px2fp
```
public func px2fp(value: Length): Option<Length>
```

- description:Converts a px `Length` value to fp. Returns `None` if `value` is not in px or the conversion is NaN; otherwise returns `Some(fp)`.

## lpx2px
```
public func lpx2px(value: Length): Option<Length>
```

- description:Converts an lpx `Length` value to physical pixels (px). Returns `None` if `value` is not in lpx or the conversion is NaN; otherwise returns `Some(px)`.

## px2lpx
```
public func px2lpx(value: Length): Option<Length>
```

- description:Converts a px `Length` value to lpx. Returns `None` if `value` is not in px or the conversion is NaN; otherwise returns `Some(lpx)`.
