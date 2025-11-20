# endShape()

Begins adding vertices to a custom shape.

The beginShape() and `endShape()` functions
allow for creating custom shapes in 2D or 3D.  beginShape() begins adding vertices to a custom shape and `endShape()` stops adding them.


After calling beginShape(), shapes can be built by calling vertex(). Calling `endShape()` will stop adding vertices to the
shape. Each shape will be outlined with the current stroke color and filled
with the current fill color.

Transformations such as translate(), rotate(), and scale() don't work between beginShape() and `endShape()`. It's also not possible to use other shapes, such as ellipse() or rect(), between beginShape() and `endShape()`.

## Examples

![endShape example 1](assets/endShape1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Style the shapes.
  noFill()

  -- Left triangle.
  beginShape()
  vertex(20, 20)
  vertex(45, 20)
  vertex(45, 80)
  endShape()

  -- Right triangle.
  beginShape()
  vertex(50, 20)
  vertex(75, 20)
  vertex(75, 80)
  endShape()

  describe(
    'Two sets of triangles on a gray background'
  )
end
```

## Related

* [beginShape()](beginShape.md)
