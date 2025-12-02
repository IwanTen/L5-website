# pixelDensity()

**Not currently implemented in L5**
 
Sets the pixel density or returns the current density.

Computer displays are grids of little lights called <em>pixels</em>. A
display's <em>pixel density</em> describes how many pixels it packs into an
area. Displays with smaller pixels have a higher pixel density and create
sharper images.

`pixelDensity()` sets the pixel scaling for high pixel density displays.
By default, the pixel density is set to match the display's density.
Calling `pixelDensity(1)` turn this off.

Calling `pixelDensity()` without an argument returns the current pixel
density.

## Examples

![pixelDensity example 1](assets/pixelDensity1.webp)

```lua
function setup() 
  -- Set the pixel density to 1.
  pixelDensity(1)

  -- Create a canvas and draw
  -- a circle.
  size(100, 100)
  background(200)
  circle(50, 50, 70)

  describe('A fuzzy white circle on a gray canvas.')
end
```

## Syntax

```lua
pixelDensity([val])
```

## Parameters

| Parameter | |
| - | -- |
| val | Number: desired pixel density. |

## Related

* [displayDensity()](displayDensity.md)
