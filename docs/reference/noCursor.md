# noCursor()
 
Hides the cursor from view.

## Examples

![noCursor example 1](assets/noCursor1.webp)

```lua
function setup()
  size(100,100)
  windowTitle('noCursor example')
  -- Hide the cursor.
  noCursor()
end

function draw()
  background(200)

  circle(mouseX, mouseY, 10)

  describe('A white circle on a gray background. The circle follows the mouse as it moves. The cursor is hidden.')
end
```

## Related

* [cursor()](cursor.md)
* [describe()](describe.md)
