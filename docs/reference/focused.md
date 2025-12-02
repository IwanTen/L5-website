# focused()
 
A `Boolean` variable that's `true` if the window is focused and `false` if not.

Note: The window can only receive input if it's focused.

## Examples

![focused example 1](assets/focused1.gif)

```lua
-- Open this example in two separate browser
-- windows placed side-by-side to demonstrate.

function setup()
  size(100, 100)

  describe('A square changes color from green to red when the window is out of focus.')
end

function draw()
  -- Change the background color
  -- when the window
  -- goes in/out of focus.
  if focused then
    background(0, 255, 0)
  else 
    background(255, 0, 0)
  end
end

```

## Related

* [cursor()](cursor.md)
* [mousePressed()](mousePressed.md)
* [mouseReleased()](mouseReleased.md)
* [keyPressed()](keyPressed.md)
