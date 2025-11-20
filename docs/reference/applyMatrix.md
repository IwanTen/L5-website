# applyMatrix()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Applies a transformation matrix to the coordinate system.

Transformations such as
translate(),
rotate(), and
scale()
use matrix-vector multiplication behind the scenes. A table of numbers,
called a matrix, encodes each transformation. The values in the matrix
then multiply each point on the canvas, which is represented by a vector.

`applyMatrix()` allows for many transformations to be applied at once. See
<a href="https://en.wikipedia.org/wiki/Transformation_matrix/" target="_blank">Wikipedia</a>
and <a href="https://developer.mozilla.org/en-US/docs/Web/API/WebGL_API/Matrix_math_for_the_web/" target="_blank">MDN</a>
for more details about transformations.

There are two ways to call `applyMatrix()` in two and three dimensions.

In 2D mode, the parameters `a`, `b`, `c`, `d`, `e`, and `f`, correspond to
elements in the following transformation matrix:

<blockquote>
<img style="max-width: 150px" src="/assets/transformation-matrix.png" alt="The transformation matrix used when applyMatrix is called in 2D mode."/>

</blockquote>
The numbers can be passed individually, as in
`applyMatrix(2, 0, 0, 0, 2, 0)`. They can also be passed in an array, as in
`applyMatrix([2, 0, 0, 0, 2, 0])`.

In 3D mode, the parameters `a`, `b`, `c`, `d`, `e`, `f`, `g`, `h`, `i`,
`j`, `k`, `l`, `m`, `n`, `o`, and `p` correspond to elements in the
following transformation matrix:

<img style="max-width: 300px" src="/assets/transformation-matrix-4-4.png" alt="The transformation matrix used when applyMatrix is called in 3D mode."/>

The numbers can be passed individually, as in
`applyMatrix(2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1)`. They can
also be passed in an array, as in
`applyMatrix([2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1])`.

By default, transformations accumulate. The
push() and pop() functions
can be used to isolate transformations within distinct drawing groups.

Note: Transformations are reset at the beginning of the draw loop. Calling
`applyMatrix()` inside the draw() function won't
cause shapes to transform continuously.

## Examples

![applyMatrix example 1](assets/applyMatrix1.webp)

```lua
function setup()
  size(100, 100)

  describe('A white circle on a gray background.')
end

function draw()
  background(200)

  -- Translate the origin to the center.
  applyMatrix(1, 0, 0, 1, 50, 50)

  -- Draw the circle at coordinates (0, 0).
  circle(0, 0, 40)
end
```

## Syntax

```lua
applyMatrix(arr)
```

## Parameters

| Parameter | |
| - | -- |
| arr | Array: an array containing the elements of the transformation matrix. Its length should be either 6 (2D) or 16 (3D). |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
