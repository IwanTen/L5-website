# Animation with Events

This example demonstrates the use of [loop()](/reference/loop.md) and [noLoop()](/reference/noLoop.md) to pause and resume the animation.

Clicking the mouse toggles the animation loop. If the animation loop is stopped, the user can press any key to advance one frame. Note: the user must click to set the focus on the window for key presses to be registered.

Advancing a single frame is accomplished by calling the [redraw()](/reference/redraw.md) function, which results in a single call to the draw() function.

![When black canvas is clicked a colored ball moves to the right, and wraps around with a different color](/assets/examples/animation-with-events.gif)

```lua
require("L5")

-- Declare variable for the horizontal position of the circle
local x = 25

function setup()
  -- Create the canvas
  size(720, 400)

  windowTitle('Animation with Events')

  -- Set the color mode to hue-saturation-brightness (HSB)
  colorMode(HSB)

  -- Set the text size
  textSize(20)

  -- No animation to start
  noLoop()

  describe('circle moving to the right')
end

function draw()
  -- Clear the background
  background(0)

  -- Draw a circle, with hue determined by frameCount
  fill(x / 3, 90, 90)
  circle(x, height / 2, 50)

  -- Increase the x variable by 5
  x = x + 5

  -- Reset the circle position after it moves off the right side
  if x > width + 25 then 
    x = -25
  end
end

function mousePressed()
  -- Start/stop the animation loop
  if isLooping() then 
    noLoop()
  else 
    loop()
  end
end

function keyPressed()
  -- Draw one frame
  redraw()
end
```

## Related Examples

* [Drawing Lines](animation-and-variables-drawing-lines.md)
* [Conditions](animation-and-variables-conditions.md)

Animation with Events: Revised by [Darren Kessner](https://github.com/dkessner). Edited and maintained by [p5.js Contributors](https://github.com/processing/p5.js?tab=readme-ov-file#contributors) and [Processing Foundation](https://processingfoundation.org/people). Adapted to L5 2025. Licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/). 
