# keyIsDown()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns `true` if the key it’s checking is pressed and `false` if not.

`keyIsDown()` is helpful when checking for multiple different key presses.
For example, `keyIsDown()` can be used to check if both `LEFT_ARROW` and
`UP_ARROW` are pressed:

<pre><code class="language-js">if (keyIsDown(LEFT_ARROW) && keyIsDown(UP_ARROW)) {
  // Move diagonally.
}
`</pre>
`keyIsDown()` can check for key presses using
keyCode values, as in `keyIsDown(37)` or
`keyIsDown(LEFT_ARROW)`. Key codes can be found on websites such as
<a href="https://keycode.info" target="_blank">keycode.info</a>.

## Examples

![keyIsDown example 1](assets/keyIsDown1.webp)

```lua
-- Click on the canvas to begin detecting key presses.

local x = 50
local y = 50

function setup()
  size(100, 100)

  background(200)

  describe(
    'A gray square with a black circle at its center. The circle moves when the user presses an arrow key. It leaves a trail as it moves.'
  )
end

function draw()
  -- Update x and y if an arrow key is pressed.
  if (keyIsDown(LEFT_ARROW) == true) 
    x -= 1
  end

  if (keyIsDown(RIGHT_ARROW) == true) 
    x += 1
  end

  if (keyIsDown(UP_ARROW) == true) 
    y -= 1
  end

  if (keyIsDown(DOWN_ARROW) == true) 
    y += 1
  end

  -- Style the circle.
  fill(0)

  -- Draw the circle.
  circle(x, y, 5)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
