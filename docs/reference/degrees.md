# degrees()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts an angle measured in radians to its value in degrees.

Degrees and radians are both units for measuring angles. There are 360˚ in one full rotation. A full rotation is 2 × π (about 6.28) radians.

The same angle can be expressed in with either unit. For example, 90° is a quarter of a full rotation. The same angle is 2 × π ÷ 4 (about 1.57) radians.

## Examples

```lua
function setup()
  rad = PI/4
  deg = degrees(rad)
  print(rad.." radians is "..deg.." degrees.")
end
```

## Related

* [radians()](radians.md)
* [angleMode()](angleMode.md)
