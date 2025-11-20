# mouseY()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` system variable that tracks the mouse's vertical position.

In 2D mode, `mouseY` keeps track of the mouse's position relative to the
top-left corner of the canvas. For example, if the mouse is 50 pixels from
the top edge of the canvas, then `mouseY` will be 50.

In WebGL mode, `mouseY` keeps track of the mouse's position relative to the
center of the canvas. For example, if the mouse is 50 pixels below the
canvas' center, then `mouseY` will be 50.

If touch is used instead of the mouse, then `mouseY` will hold the
y-coordinate of the most recent touch point.

## Examples

![mouseY example 1](assets/mouseY1.webp)

```lua
function setup()
  size(100, 100)

  describe("A horizontal black line moves up and down following the mouse's y-position.")
end

function draw()
  background(200)

  -- Draw a horizontal line that follows the mouse's y-coordinate.
  line(0, mouseY, 100, mouseY)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
