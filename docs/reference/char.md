# char()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a `Number` or `String` to a single-character `String`.

`char()` converts numbers to their single-character string representations.

The parameter, `n`, is the value to convert. If a number is passed, as in
`char(65)`, the corresponding single-character string is returned. If a
string is passed, as in `char('65')`, the string is converted to an integer
(whole number) and the corresponding single-character string is returned.
If an array is passed, as in `char([65, 66, 67])`, an array of
single-character strings is returned.

See <a href="https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String/fromCharCode/" target="_blank">MDN</a>
for more information about conversions.

## Examples

![char example 1](assets/char1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a number variable.
  local original = 65

  -- Convert the number to a char.
  local converted = char(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend : $convertedend`, 50, 50)

  describe('The text "65 : A" written in black on a gray background.')
end
```

## Syntax

```lua
char(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String|Number: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
