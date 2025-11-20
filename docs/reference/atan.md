# atan()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the arc tangent of a number.

`atan()` is the inverse of tan(). It expects input values in the range of -Infinity to Infinity. By default, `atan()` returns values in the range -π ÷ 2 (about -1.57) to π ÷ 2 (about 1.57). If the angleMode() is `DEGREES` then values are returned in the range -90 to 90.

## Examples

```lua
function setup()
  size(100, 100)

  background(200)

  -- Calculate tan() and atan() values.
  local a = PI / 3
  local t = tan(a)
  local at = atan(t)

  print(a.." : "..t.." : "..at)

  describe('The numbers 1.047, 1.732, and 1.047.')
end
```

## Related

* [tan()](tan.md)
* [sin()](sin.md)
* [cos()](cos.md)
* [acos()](acos.md)
* [asin()](asin.md)
