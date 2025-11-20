# mouseX()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` system variable that tracks the mouse's horizontal position.

In 2D mode, `mouseX` keeps track of the mouse's position relative to the
top-left corner of the canvas. For example, if the mouse is 50 pixels from
the left edge of the canvas, then `mouseX` will be 50.

In WebGL mode, `mouseX` keeps track of the mouse's position relative to the
center of the canvas. For example, if the mouse is 50 pixels to the right
of the canvas' center, then `mouseX` will be 50.

If touch is used instead of the mouse, then `mouseX` will hold the
x-coordinate of the most recent touch point.

## Examples

![mouseX example 1](assets/mouseX1.webp)

```lua
function setup()
  size(100, 100)

  describe("A vertical black line moves left and right following the mouse's x-position.")
end

function draw()
  background(200)

  -- Draw a vertical line that follows the mouse's x-coordinate.
  line(mouseX, 0, mouseX, 100)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
