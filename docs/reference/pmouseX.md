# pmouseX()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` system variable that tracks the mouse's previous horizontal
position.

In 2D mode, `pmouseX` keeps track of the mouse's position relative to the
top-left corner of the canvas. Its value is
mouseX from the previous frame. For example, if
the mouse was 50 pixels from the left edge of the canvas during the last
frame, then `pmouseX` will be 50.

In WebGL mode, `pmouseX` keeps track of the mouse's position relative to the
center of the canvas. For example, if the mouse was 50 pixels to the right
of the canvas' center during the last frame, then `pmouseX` will be 50.

If touch is used instead of the mouse, then `pmouseX` will hold the
x-coordinate of the last touch point.

Note: `pmouseX` is reset to the current mouseX
value at the start of each touch event.

## Examples

![pmouseX example 1](assets/pmouseX1.webp)

```lua
function setup()
  size(100, 100)

  -- Slow the frame rate.
  frameRate(10)

  describe('A line follows the mouse as it moves. The line grows longer with faster movements.')
end

function draw()
  background(200)

  line(pmouseX, pmouseY, mouseX, mouseY)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
