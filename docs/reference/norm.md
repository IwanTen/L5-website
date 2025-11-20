# norm()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Maps a number from one range to a value between 0 and 1.

For example, `norm(2, 0, 10)` returns 0.2. 2's position in the original
range [0, 10] is proportional to 0.2's position in the range [0, 1]. This
is the same as calling `map(2, 0, 10, 0, 1)`.

Numbers outside of the original range are not constrained between 0 and 1.
Out-of-range values are often intentional and useful.

## Examples

![norm example 1](assets/norm1.webp)

```lua
function setup()
  size(100, 100)

  -- Use RGB color with values from 0 to 1.
  colorMode(RGB, 1)

  describe('A square changes color from black to red as the mouse moves from left to right.')
end

function draw()
  -- Calculate the redValue.
  local redValue = norm(mouseX, 0, 100)

  -- Paint the background.
  background(redValue, 0, 0)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
