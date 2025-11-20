# fract()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the fractional part of a number.

A number's fractional part includes its decimal values. For example,
`fract(12.34)` returns 0.34.

## Examples

![fract example 1](assets/fract1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Original number.
  local n = 56.78
  text(n, 50, 33)

  -- Fractional part.
  local f = fract(n)
  text(f, 50, 67)

  describe('The number 56.78 written above the number 0.78.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
