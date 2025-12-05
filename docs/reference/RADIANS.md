## RADIANS

A string constant that's used to set the [angleMode()](angleMode.md).

By default, functions such as [rotate()](rotate.md) and [sin()](sin.md) expect angles measured in units of radians.

Calling `angleMode(RADIANS)` ensures that angles are measured in units of radians. Doing so can be useful if the [angleMode()](angleMode.md) has been set to [DEGREES](DEGREES.md).

*Note: `TWO_PI` radians equals 360˚.*

## Examples

![RADIANS example 1](assets/DEGREES1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Use degrees.
  angleMode(DEGREES)

  -- Draw a red arc from 0˚ to 90˚.
  fill(255, 0, 0)
  arc(50, 50, 80, 80, 0, 90)

  -- Use radians.
  angleMode(RADIANS)

  -- Draw a blue arc from HALF_PI to PI.
  fill(0, 0, 255)
  arc(50, 50, 80, 80, HALF_PI, PI)

  describe('The bottom half of a circle drawn on a gray background. The bottom-right quarter is red. The bottom-left quarter is blue.')
end
```

## Related

* [angleMode()](angleMode.md)
* [DEGREES](DEGREES.md)
* [ellipseMode()](ellipseMode.md)
* [ellipse()](ellipse.md)
* [radians()](radians.md)

