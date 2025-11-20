# asin()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the arc sine of a number.

`asin()` is the inverse of sin(). It expects input
values in the range of -1 to 1. By default, `asin()` returns values in the
range -π ÷ 2 (about -1.57) to π ÷ 2 (about 1.57). If
the angleMode() is `DEGREES` then values are
returned in the range -90 to 90.

## Examples

![asin example 1](assets/asin1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Calculate sin() and asin() values.
  local a = PI / 3
  local s = sin(a)
  local as = asin(s)

  -- Display the values.
  text(`$round(a, 3)end`, 35, 25)
  text(`$round(s, 3)end`, 35, 50)
  text(`$round(as, 3)end`, 35, 75)

  describe('The numbers 1.047, 0.866, and 1.047 written on separate rows.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
