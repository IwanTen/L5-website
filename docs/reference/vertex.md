# vertex()

Adds a vertex to a custom shape.

`vertex()` sets the coordinates of vertices drawn between the
beginShape() and
endShape() functions.

The first two parameters, `x` and `y`, set the x- and y-coordinates of the
vertex.

## Examples

![vertex example 1](assets/vertex1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Style the shape.
  strokeWeight(3)

  -- Start drawing the shape.
  beginShape()

  -- Add the vertices.
  vertex(30, 20)
  vertex(85, 20)
  vertex(85, 75)
  vertex(30, 75)

  -- Stop drawing the shape.
  endShape()

  describe('Using custom shape and vertices to define a square.')
end
```

## Syntax

```lua
vertex(x, y)
```

## Parameters

| Parameter | |
| - | -- |
| x | Number: x-coordinate of the vertex. |
| y | Number: y-coordinate of the vertex. |

## Related

* [beginShape()](beginShape.md)
* [endShape()](endShape.md)
