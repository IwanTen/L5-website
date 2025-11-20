# map()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Re-maps a number from one range to another.

For example, calling `map(2, 0, 10, 0, 100)` returns 20. The first three
arguments set the original value to 2 and the original range from 0 to 10.
The last two arguments set the target range from 0 to 100. 20's position
in the target range [0, 100] is proportional to 2's position in the
original range [0, 10].

The sixth parameter, `withinBounds`, is optional. By default, `map()` can
return values outside of the target range. For example,
`map(11, 0, 10, 0, 100)` returns 110. Passing `true` as the sixth parameter
constrains the remapped value to the target range. For example,
`map(11, 0, 10, 0, 100, true)` returns 100.

## Examples

![map example 1](assets/map1.webp)

```lua
function setup()
  size(100, 100)

  describe('Two horizontal lines. The top line grows horizontally as the mouse moves to the right. The bottom line also grows horizontally but is scaled to stay on the left half of the canvas.')
end

function draw()
  background(200)

  -- Draw the top line.
  line(0, 25, mouseX, 25)

  -- Remap mouseX from [0, 100] to [0, 50].
  local x = map(mouseX, 0, 100, 0, 50)

  -- Draw the bottom line.
  line(0, 75, x, 75)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
