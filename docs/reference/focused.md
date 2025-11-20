# focused()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

A `Boolean` variable that's `true` if the browser is focused and `false` if
not.

Note: The browser window can only receive input if it's focused.

## Examples

![focused example 1](assets/focused1.webp)

```lua
-- Open this example in two separate browser
-- windows placed side-by-side to demonstrate.

function setup()
  size(100, 100)

  describe('A square changes color from green to red when the browser window is out of focus.')
end

function draw()
  -- Change the background color
  -- when the browser window
  -- goes in/out of focus.
  if (focused == true) 
    background(0, 255, 0)
  end else 
    background(255, 0, 0)
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
