# byte()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `Boolean`, `String`, or `Number` to its byte value.

`byte()` converts a value to an integer (whole number) between -128 and
127. Values greater than 127 wrap around while negative values are
unchanged. For example, 128 becomes -128 and -129 remains the same.

The parameter, `n`, is the value to convert. If `n` is a Boolean, as in
`byte(false)` or `byte(true)`, the number 0 (`false`) or 1 (`true`) will be
returned. If `n` is a string or number, as in `byte('256')` or `byte(256)`,
then the byte value will be returned. Decimal values are ignored. If an
array is passed, as in `byte([true, 123, '456'])`, then an array of byte
values will be returned.

Note: If a value can't be converted to a number, as in `byte('giraffe')`,
then the value `NaN` (not a number) will be returned.

## Examples

![byte example 1](assets/byte1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a Boolean variable.
  local original = true

  -- Convert the Boolean to its byte value.
  local converted = byte(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend : $convertedend`, 50, 50)

  describe('The text "true : 1" written in black on a gray background.')
end
```

## Syntax

```lua
byte(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String|Boolean|Number: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
