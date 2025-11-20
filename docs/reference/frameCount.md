# frameCount()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` variable that tracks the number of frames drawn since the sketch
started.

`frameCount`'s value is 0 inside setup(). It
increments by 1 each time the code in draw()
finishes executing.

## Examples

![frameCount example 1](assets/frameCount1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Display the value of
  -- frameCount.
  textSize(30)
  textAlign(CENTER, CENTER)
  fill(0)
  text(frameCount, 50, 50)

  describe('The number 0 written in black in the middle of a gray square.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
