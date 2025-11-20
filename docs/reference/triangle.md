# triangle()

A triangle is a plane created by connecting three points. The first two arguments specify the first point, the middle two arguments specify the second point, and the last two arguments specify the third point.

## Examples

![triangle 1 example](assets/triangle1.webp)

```lua
function setup() 
  size(100, 100)
  windowTitle("triangle example")
  background(200)

  triangle(30, 75, 58, 20, 86, 75)

  describe('A white triangle with a black outline on a gray canvas.')
end
```

## Syntax

```lua
triangle(x1, y1, x2, y2, x3, y3)
```

## Parameters

| Parameter |                                                    |
| -         | -------------------------------------------------- |
| x1        | Number: x-coordinate of the first point.           |
| y1        | Number: y-coordinate of the first point.           |
| x2        | Number: x-coordinate of the second point.          |
| y2        | Number: y-coordinate of the second point.          |
| x3        | Number: x-coordinate of the third point.           |
| y3        | Number: y-coordinate of the third point.           |

## Related

* [arc()](arc.md)
* [quad()](quad.md)
* [line()](line.md)
