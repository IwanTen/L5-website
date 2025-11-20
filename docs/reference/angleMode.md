# angleMode()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Changes the unit system used to measure angles.

Degrees and radians are both units for measuring angles. There are 360˚ in
one full rotation. A full rotation is 2 × π (about 6.28) radians.

Functions such as rotate() and
sin() expect angles measured radians by default.
Calling `angleMode(DEGREES)` switches to degrees. Calling
`angleMode(RADIANS)` switches back to radians.

Calling `angleMode()` with no arguments returns current angle mode, which
is either `RADIANS` or `DEGREES`.

## Examples

![angleMode example 1](assets/angleMode1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Rotate 1/8 turn.
  rotate(QUARTER_PI)

  -- Draw a line.
  line(0, 0, 80, 0)

  describe('A diagonal line radiating from the top-left corner of a square.')
end
```

## Syntax

```lua
angleMode(mode)
```

## Parameters

| Parameter | |
| - | -- |
| mode | Constant: either RADIANS or DEGREES. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
