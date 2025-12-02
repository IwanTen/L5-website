# ceil()
 
Calculates the closest integer value that is greater than or equal to a number.

For example, calling `ceil(9.03)` and `ceil(9.97)` both return the value 10.

## Examples

![ceil example 1](assets/ceil1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Use RGB color with values from 0 to 1.
  colorMode(RGB, 1)

  noStroke()

  -- Draw the left rectangle.
  local r = 0.3
  fill(r, 0, 0)
  rect(0, 0, 50, 100)

  -- Round r up to 1.
  r = ceil(r)

  -- Draw the right rectangle.
  fill(r, 0, 0)
  rect(50, 0, 50, 100)

  describe('Two rectangles. The one on the left is dark red and the one on the right is bright red.')
end
```

## Syntax

```lua
ceil(n)
```

## Parameters

| Parameter |                              |
| -         | --                           |
| n         | Number: number to round up.  |

## Returns

Number: rounded up number

## Related

* [abs()](abs.md)
* [floor()](floor.md)
* [round()](round.md)
* [int()](int.md)

