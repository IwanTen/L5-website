# keyIsPressed()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Boolean` system variable that's `true` if any key is currently pressed
and `false` if not.

## Examples

![keyIsPressed example 1](assets/keyIsPressed1.webp)

```lua
-- Click on the canvas to begin detecting key presses.

function setup()
  size(100, 100)

  describe(
    'A gray square with a white square at its center. The white square turns black when the user presses a key.'
  )
end

function draw()
  background(200)

  -- Style the square.
  if (keyIsPressed == true) 
    fill(0)
  end else 
    fill(255)
  end

  -- Draw the square.
  square(25, 25, 50)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
