# noStroke()

Disables drawing points, lines, and the outlines of shapes.

Calling `noStroke()` is the same as making the stroke completely transparent, as in `stroke(0, 0)`. If both `noStroke()` and noFill() are called, nothing will be drawn to the screen.

## Examples

![noStroke example 1](assets/noStroke1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  noStroke()
  square(20, 20, 60)

  describe('A white square with no outline.')
end
```

## Syntax

```lua
noStroke()
```

## Related

* [stroke()](stroke.md)
* [fill()](fill.md)
* [noFill()](noFill.md)
