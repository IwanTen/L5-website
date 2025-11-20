# int()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `Boolean`, `String`, or decimal `Number` to an integer.

`int()` converts values to integers. Integers are positive or negative
numbers without decimals. If the original value has decimals, as in -34.56,
they're removed to produce an integer such as -34.

The parameter, `n`, is the value to convert. If `n` is a Boolean, as in
`int(false)` or `int(true)`, then the number 0 (`false`) or 1 (`true`) will
be returned. If `n` is a string or number, as in `int('45')` or
`int(67.89)`, then an integer will be returned. If an array is passed, as
in `int([12.34, 56.78])`, then an array of integers will be returned.

Note: If a value can't be converted to a number, as in `int('giraffe')`,
then the value `NaN` (not a number) will be returned.

## Examples

![int example 1](assets/int1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a Boolean variable.
  local original = false

  -- Convert the Boolean to an integer.
  local converted = int(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend : $convertedend`, 50, 50)

  describe('The text "false : 0" written in black on a gray background.')
end
```

## Syntax

```lua
int(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String|Boolean|Number: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
