# movedY()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Number` system variable that tracks the mouse's vertical movement.

`movedY` tracks how many pixels the mouse moves up or down between
frames. `movedY` will have a negative value if the mouse moves up between
frames and a positive value if it moves down. `movedY` can be calculated
as `mouseY - pmouseY`.

Note: `movedY` continues updating even when
requestPointerLock() is active.

## Examples

![movedY example 1](assets/movedY1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'A gray square. The text "▲" appears when the user moves the mouse upward. The text "▼" appears when the user moves the mouse downward.'
  )
end

function draw()
  background(200)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display ▼ when movedY is positive and
  -- ▲ when it's negative.
  if (movedY > 0) 
    text('▼', 50, 50)
  end elseif (movedY < 0) 
    text('▲', 50, 50)
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
