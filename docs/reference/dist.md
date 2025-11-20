# dist()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the distance between two points.

The version of `dist()` with four parameters calculates distance in two
dimensions.

The version of `dist()` with six parameters calculates distance in three
dimensions.

Use p5.Vector.dist() to calculate the
distance between two p5.Vector objects.

## Examples

![dist example 1](assets/dist1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Set the coordinates.
  local x1 = 10
  local y1 = 50
  local x2 = 90
  local y2 = 50

  -- Draw the points and a line connecting them.
  line(x1, y1, x2, y2)
  strokeWeight(5)
  point(x1, y1)
  point(x2, y2)

  -- Calculate the distance.
  local d = dist(x1, y1, x2, y2)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the distance.
  text(d, 43, 40)

  describe('Two dots connected by a horizontal line. The number 80 is written above the center of the line.')
end
```

## Syntax

```lua
dist(x1, y1, x2, y2)
```

## Parameters

| Parameter | |
| - | -- |
| x1 | Number: x-coordinate of the first point. |
| y1 | Number: y-coordinate of the first point. |
| x2 | Number: x-coordinate of the second point. |
| y2 | Number: y-coordinate of the second point. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
