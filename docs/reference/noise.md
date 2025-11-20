# noise()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns random numbers that can be tuned to feel organic.

Values returned by random() and
randomGaussian() can change by large
amounts between function calls. By contrast, values returned by `noise()`
can be made "smooth". Calls to `noise()` with similar inputs will produce
similar outputs. `noise()` is used to create textures, motion, shapes,
terrains, and so on. Ken Perlin invented `noise()` while animating the
original <em>Tron</em> film in the 1980s.

`noise()` always returns values between 0 and 1. It returns the same value
for a given input while a sketch is running. `noise()` produces different
results each time a sketch runs. The
noiseSeed() function can be used to generate
the same sequence of Perlin noise values each time a sketch runs.

The character of the noise can be adjusted in two ways. The first way is to
scale the inputs. `noise()` interprets inputs as coordinates. The sequence
of noise values will be smoother when the input coordinates are closer. The
second way is to use the noiseDetail()
function.

The version of `noise()` with one parameter computes noise values in one
dimension. This dimension can be thought of as space, as in `noise(x)`, or
time, as in `noise(t)`.

The version of `noise()` with two parameters computes noise values in two
dimensions. These dimensions can be thought of as space, as in
`noise(x, y)`, or space and time, as in `noise(x, t)`.

The version of `noise()` with three parameters computes noise values in
three dimensions. These dimensions can be thought of as space, as in
`noise(x, y, z)`, or space and time, as in `noise(x, y, t)`.

## Examples

![noise example 1](assets/noise1.webp)

```lua
function setup()
  size(100, 100)

  describe('A black dot moves randomly on a gray square.')
end

function draw()
  background(200)

  -- Calculate the coordinates.
  local x = 100 * noise(0.005 * frameCount)
  local y = 100 * noise(0.005 * frameCount + 10000)

  -- Draw the point.
  strokeWeight(5)
  point(x, y)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
