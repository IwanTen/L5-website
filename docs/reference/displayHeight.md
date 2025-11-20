# displayHeight()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that stores the height of the screen display.

`displayHeight` is useful for running full-screen programs. Its value depends on the current pixelDensity().

Note: The actual screen height can be computed as `displayHeight * pixelDensity()`.

## Examples

![displayHeight example 1](assets/displayHeight1.webp)

```lua
function setup()
  -- Set the canvas' width and height
  -- using the display's dimensions.
  size(displayWidth, displayHeight)

  background(200)

  describe('A gray canvas that is the same size as the display.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
