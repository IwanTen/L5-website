# frameRate()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Sets the number of frames to draw per second.

Calling `frameRate()` with one numeric argument, as in `frameRate(30)`, attempts to draw 30 frames per second (FPS). The target frame rate may not be achieved depending on the sketch's processing needs. Most computers default to a frame rate of 60 FPS. Frame rates of 24 FPS and above are fast enough for smooth animations.

Calling `frameRate()` without an argument returns the current frame rate. The value returned is an approximation.

## Examples

![frameRate example 1](assets/frameRate1.webp)

```lua
function setup()
  size(100, 100)

  describe('A white circle on a gray background. The circle moves from left to right in a loop. It slows down when the mouse is pressed.')
end

function draw()
  background(200)

  -- Set the x variable based
  -- on the current frameCount.
  local x = frameCount % 100

  -- If the mouse is pressed,
  -- decrease the frame rate.
  if mouseIsPressed then
    frameRate(10)
  else 
    frameRate(60)
  end

  -- Use x to set the circle's
  -- position.
  circle(x, 50, 20)
end
```

## Syntax

```lua
frameRate(fps)
```

## Parameters

| Parameter | |
| - | -- |
| fps | Number: number of frames to draw per second. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
