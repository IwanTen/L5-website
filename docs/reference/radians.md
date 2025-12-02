# radians()
 
Converts an angle measured in degrees to its value in radians.

Degrees and radians are both units for measuring angles. There are 360˚ in one full rotation. A full rotation is 2 × π (about 6.28) radians.

The same angle can be expressed in with either unit. For example, 90° is a quarter of a full rotation. The same angle is 2 × π ÷ 4 (about 1.57) radians.

## Examples

![radians example 1](assets/radians1.webp)

```lua
function setup()
  size(100, 100)
  fill(0)
  background(200)

  -- Calculate the angle conversion.
  local deg = 45
  local rad = radians(deg)

  -- Display the angle conversion.
  text(deg..'˚ ='..round(rad, 3)..'rad', 10, 50)

  describe('The text "45˚ = 0.785 rad".')
end

```

## Syntax

```lua
radians(degrees)
```

## Parameters

| Parameter |                                                                                                       |
| -         | --                                                                                                    |
| degrees   | Number: degrees value to convert to radans.                                                           |

## Returns

Number: converted angle 

## Related

* [angleMode()](angleMode.md)
* [degrees()](degrees.md)
* [acos()](acos.md)
* [asin()](asin.md)
* [atan()](atan.md)

