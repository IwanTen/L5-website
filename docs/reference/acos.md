# acos()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the arc cosine of a number.

`acos()` is the inverse of cos(). It expects
arguments in the range -1 to 1. By default, `acos()` returns values in the
range 0 to π (about 3.14). If the
angleMode() is `DEGREES`, then values are
returned in the range 0 to 180.

## Examples

![acos example 1](assets/acos1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Calculate cos() and acos() values.
  local a = PI
  local c = cos(a)
  local ac = acos(c)

  -- Display the values.
  text(`$round(a, 3)end`, 35, 25)
  text(`$round(c, 3)end`, 35, 50)
  text(`$round(ac, 3)end`, 35, 75)

  describe('The numbers 3.142, -1, and 3.142 written on separate rows.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
