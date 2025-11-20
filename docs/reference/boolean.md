# boolean()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `String` or `Number` to a `Boolean`.

`boolean()` converts values to `true` or `false`.

The parameter, `n`, is the value to convert. If `n` is a string, then
`boolean('true')` will return `true` and every other string value will
return `false`. If `n` is a number, then `boolean(0)` will return `false`
and every other numeric value will return `true`. If an array is passed, as
`in boolean([0, 1, 'true', 'blue'])`, then an array of Boolean values will
be returned.

## Examples

![boolean example 1](assets/boolean1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a number variable.
  local original = 0

  -- Convert the number to a Boolean value.
  local converted = boolean(original)

  -- Style the circle based on the converted value.
  if (converted == true) 
    fill('blue')
  end else 
    fill('red')
  end

  -- Draw the circle.
  circle(50, 50, 40)

  describe('A red circle on a gray background.')
end
```

## Syntax

```lua
boolean(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String|Boolean|Number: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
