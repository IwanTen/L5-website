# randomSeed()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Sets the seed value for the random() and
randomGaussian() functions.

By default, random() and
randomGaussian() produce different
results each time a sketch is run. Calling `randomSeed()` with a constant
argument, such as `randomSeed(99)`, makes these functions produce the same
results each time a sketch is run.

## Examples

![randomSeed example 1](assets/randomSeed1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Get random coordinates.
  local x = random(0, 100)
  local y = random(0, 100)

  -- Draw the white circle.
  circle(x, y, 10)

  -- Set a random seed for consistency.
  randomSeed(99)

  -- Get random coordinates.
  x = random(0, 100)
  y = random(0, 100)

  -- Draw the black circle.
  fill(0)
  circle(x, y, 10)

  describe('A white circle appears at a random position. A black circle appears at (27.4, 25.8).')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
