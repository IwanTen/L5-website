# movedX()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` system variable that tracks the mouse's horizontal movement.

`movedX` tracks how many pixels the mouse moves left or right between
frames. `movedX` will have a negative value if the mouse moves left between
frames and a positive value if it moves right. `movedX` can be calculated
as `mouseX - pmouseX`.

Note: `movedX` continues updating even when
requestPointerLock() is active.

## Examples

![movedX example 1](assets/movedX1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'A gray square. The text ">>" appears when the user moves the mouse to the right. The text "<<" appears when the user moves the mouse to the left.'
  )
end

function draw()
  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display >> when movedX is positive and
  -- << when it's negative.
  if (movedX > 0) 
    text('>>', 50, 50)
  end elseif (movedX < 0) 
    text('<<', 50, 50)
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
