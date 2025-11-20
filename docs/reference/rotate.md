# rotate()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Rotates the coordinate system.

By default, the positive x-axis points to the right and the positive y-axis
points downward. The `rotate()` function changes this orientation by
rotating the coordinate system about the origin. Everything drawn after
`rotate()` is called will appear to be rotated.

The first parameter, `angle`, is the amount to rotate. For example, calling
`rotate(1)` rotates the coordinate system clockwise 1 radian which is
nearly 57˚. `rotate()` interprets angle values using the current
angleMode().

The second parameter, `axis`, is optional. It's used to orient 3D rotations
in WebGL mode. If a p5.Vector is passed, as in
`rotate(QUARTER_PI, myVector)`, then the coordinate system will rotate
`QUARTER_PI` radians about `myVector`. If an array of vector components is
passed, as in `rotate(QUARTER_PI, [1, 0, 0])`, then the coordinate system
will rotate `QUARTER_PI` radians about a vector with the components
`[1, 0, 0]`.

By default, transformations accumulate. For example, calling `rotate(1)`
twice has the same effect as calling `rotate(2)` once. The
push() and pop() functions
can be used to isolate transformations within distinct drawing groups.

Note: Transformations are reset at the beginning of the draw loop. Calling
`rotate(1)` inside the draw() function won't cause
shapes to spin.

## Examples

![rotate example 1](assets/rotate1.webp)

```lua
function setup()
  size(100, 100)
  windowTitle("rotate example")
  describe(
    "A white rectangle on a gray background. The rectangle's long axis runs from top-left to bottom-right."
  )
end

function draw()
  background(200)

  -- Rotate the coordinate system 1/8 turn.
  rotate(QUARTER_PI)

  -- Draw a rectangle at coordinates (50, 0).
  rect(50, 0, 40, 20)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
