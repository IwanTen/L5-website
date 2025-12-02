# round()
 
Calculates the integer closest to a number.

For example, `round(133.8)` returns the value 134.

The second parameter, `decimals`, is optional. It sets the number of decimal places to use when rounding. For example, `round(12.34, 1)` returns 12.3. `decimals` is 0 by default.

## Examples

![round example 1](assets/round1.webp)

```lua
function setup()
  size(100, 100)

  background(200)
  fill(0)

  -- Round a number.
  local x = round(4.2)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the rounded number.
  text(x, 50, 50)

  describe('The number 4 written in middle of the canvas.')
end
```

![round example 2](assets/round2.webp)

```lua
function setup() 
  size(100, 100)

  background(200)
  fill(0)

  -- Round a number to 2 decimal places.
  local x = round(12.782383, 2)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the rounded number.
  text(x, 50, 50)

  describe('The number 12.78 written in middle of canvas.')
end
```

## Syntax

```lua
round(n, [decimals])
```

## Parameters

| Parameter |                                                                    |
| -         | --                                                                 |
| n         | Number: number to round.                                           |
| decimals  | Number: number of decimal places to round to, default is 0.        |

## Returns

integer: rounded number.

## Related

* [abs()](abs.md)
* [ceil()](ceil.md)
* [constrain()](constrain.md)
* [dist()](dist.md)

