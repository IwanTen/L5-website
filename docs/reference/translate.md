# translate()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Translates the coordinate system.

By default, the origin `(0, 0)` is at the sketch's top-left corner in 2D
mode and center in WebGL mode. The `translate()` function shifts the origin
to a different position. Everything drawn after `translate()` is called
will appear to be shifted. There are two ways to call `translate()` with
parameters that set the origin's position.

The first way to call `translate()` uses numbers to set the amount of
translation. The first two parameters, `x` and `y`, set the amount to
translate along the positive x- and y-axes. For example, calling
`translate(20, 30)` translates the origin 20 pixels along the x-axis and 30
pixels along the y-axis. The third parameter, `z`, is optional. It sets the
amount to translate along the positive z-axis. For example, calling
`translate(20, 30, 40)` translates the origin 20 pixels along the x-axis,
30 pixels along the y-axis, and 40 pixels along the z-axis.

The second way to call `translate()` uses a
p5.Vector object to set the amount of
translation. For example, calling `translate(myVector)` uses the x-, y-,
and z-components of `myVector` to set the amount to translate along the x-,
y-, and z-axes. Doing so is the same as calling
`translate(myVector.x, myVector.y, myVector.z)`.

By default, transformations accumulate. For example, calling
`translate(10, 0)` twice has the same effect as calling
`translate(20, 0)` once. The push() and
pop() functions can be used to isolate
transformations within distinct drawing groups.

Note: Transformations are reset at the beginning of the draw loop. Calling
`translate(10, 0)` inside the draw() function won't
cause shapes to move continuously.

## Examples

![translate example 1](assets/translate1.webp)

```lua
function setup()
  size(100, 100)

  describe('A white circle on a gray background.')
end

function draw()
  background(200)

  -- Translate the origin to the center.
  translate(50, 50)

  -- Draw a circle at coordinates (0, 0).
  circle(0, 0, 40)
end
```

## Syntax

```lua
translate(x, y, [z])
```

## Parameters

| Parameter | |
| - | -- |
| x | Number: amount to translate along the positive x-axis. |
| y | Number: amount to translate along the positive y-axis. |
| z | Number: amount to translate along the positive z-axis. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
