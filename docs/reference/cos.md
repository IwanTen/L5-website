# cos()

Calculates the cosine of an angle.

`cos()` is useful for many geometric tasks in creative coding. The values
returned oscillate between -1 and 1 as the input angle increases. `cos()`
calculates the cosine of an angle, using radians by default, or according to
if angleMode() setting (RADIANS or DEGREES).

## Examples

![cos example 1](assets/angleMode5.gif)

```lua
function setup()
  size(100, 100)

  describe('A white ball on a string oscillates left and right.')
end

function draw()
  background(200)

  -- Calculate the coordinates.
  local x = 30 * cos(frameCount * 0.05) + 50
  local y = 50

  -- Draw the oscillator.
  line(50, y, x, y)
  circle(x, y, 20)
end
```

![cos example 2](assets/cos2.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  describe('A series of black dots form a wave pattern.')
end

function draw()
  -- Calculate the coordinates.
  local x = frameCount
  local y = 30 * cos(x * 0.1) + 50

  -- Draw the point.
  point(x, y)
end
```

![cos example 3](assets/cos3.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  describe('A series of black dots form an infinity symbol.')
end

function draw()
  -- Calculate the coordinates.
  local x = 30 * cos(frameCount * 0.1) + 50
  local y = 10 * sin(frameCount * 0.2) + 50

  -- Draw the point.
  point(x, y)
end
```

## Syntax

```lua
cos(angle)
```

## Parameters

| Parameter |                                                                                                       |
| -         | --                                                                                                    |
| angle     | Number: the angle, in radians by default, or according to angleMode() setting (RADIANS or DEGREES) |

## Returns

Number: cosine of the angle

## Related

* [acos()](acos.md)
* [angleMode()](angleMode.md)
* [asin()](asin.md)
* [atan()](atan.md)

