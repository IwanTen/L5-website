# scale()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Scales the coordinate system.

By default, shapes are drawn at their original scale. A rectangle that's 50
pixels wide appears to take up half the width of a 100 pixel-wide canvas.
The `scale()` function can shrink or stretch the coordinate system so that
shapes appear at different sizes. There are two ways to call `scale()` with
parameters that set the scale factor(s).

The first way to call `scale()` uses numbers to set the amount of scaling.
The first parameter, `s`, sets the amount to scale each axis. For example,
calling `scale(2)` stretches the x-, y-, and z-axes by a factor of 2. The
next two parameters, `y` and `z`, are optional. They set the amount to
scale the y- and z-axes. For example, calling `scale(2, 0.5, 1)` stretches
the x-axis by a factor of 2, shrinks the y-axis by a factor of 0.5, and
leaves the z-axis unchanged.

The second way to call `scale()` uses a p5.Vector
object to set the scale factors. For example, calling `scale(myVector)`
uses the x-, y-, and z-components of `myVector` to set the amount of
scaling along the x-, y-, and z-axes. Doing so is the same as calling
`scale(myVector.x, myVector.y, myVector.z)`.

By default, transformations accumulate. For example, calling `scale(1)`
twice has the same effect as calling `scale(2)` once. The
push() and pop() functions
can be used to isolate transformations within distinct drawing groups.

Note: Transformations are reset at the beginning of the draw loop. Calling
`scale(2)` inside the draw() function won't cause
shapes to grow continuously.

## Examples

![scale example 1](assets/scale1.webp)

```lua
function setup()
  size(100, 100)

  describe(
    'Two white squares on a gray background. The larger square appears at the top-center. The smaller square appears at the top-left.'
  )
end

function draw()
  background(200)

  -- Draw a square at (30, 20).
  square(30, 20, 40)

  -- Scale the coordinate system by a factor of 0.5.
  scale(0.5)

  -- Draw a square at (30, 20).
  -- It appears at (15, 10) after scaling.
  square(30, 20, 40)
end
```

## Syntax

```lua
scale(s, [y], [z])
```

## Parameters

| Parameter | |
| - | -- |
| s | Number|p5.Vector|Number[]: amount to scale along the positive x-axis. |
| y | Number: amount to scale along the positive y-axis. Defaults to `s`. |
| z | Number: amount to scale along the positive z-axis. Defaults to `y`. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
