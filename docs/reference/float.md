# float()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `String` to a floating point (decimal) `Number`.

`float()` converts strings that resemble numbers, such as `'12.34'`, into
numbers.

The parameter, `str`, is the string value to convert. For example, calling
`float('12.34')` returns the number `12.34`.  If an array of strings is
passed, as in `float(['12.34', '56.78'])`, then an array of numbers will be
returned.

Note: If a string can't be converted to a number, as in `float('giraffe')`,
then the value `NaN` (not a number) will be returned.

## Examples

![float example 1](assets/float1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a string variable.
  local original = '12.3'

  -- Convert the string to a number.
  local converted = float(original)

  -- Double the converted value.
  local twice = converted * 2

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(12)

  -- Display the original and converted values.
  text(`$originalend × 2 = $twiceend`, 50, 50)

  describe('The text "12.3 × 2 = 24.6" written in black on a gray background.')
end
```

## Syntax

```lua
float(str)
```

## Parameters

| Parameter | |
| - | -- |
| str | String: string to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
