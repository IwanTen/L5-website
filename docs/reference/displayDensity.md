# displayDensity()
 
Returns the display's current pixel density.

## Examples

![displayDensity example 1](assets/displayDensity1.webp)

```lua
function setup()
  size(100,100)
  -- Create a canvas and draw
  -- a circle.
  background(200)
  circle(50, 50, 70)

  describe('A fuzzy white circle drawn on a gray background. The circle becomes sharper when the mouse is pressed.')
end

function mousePressed()
  -- Get the current display density.
  local d = displayDensity()
  -- And print it out
  print(d)

  -- Paint the background and
  -- draw a circle.
  background(200)
  circle(50, 50, 70)
end
```

## Returns

Number: current pixel density of the display

## Related

* [size()](size.md)
* [fullsize()](fullsize.md)
* [pixels](pixels.md)
