# unchar()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Converts a single-character `String` to a `Number`.

`unchar()` converts single-character strings to their corresponding
integer (whole number).

The parameter, `n`, is the character to convert. For example,
`unchar('A')`, returns the number 65. If an array is passed, as in
`unchar(['A', 'B', 'C'])`, an array of integers is returned.

## Examples

![unchar example 1](assets/unchar1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Create a string variable.
  local original = 'A'

  -- Convert the string to a number.
  local converted = unchar(original)

  -- Style the text.
  textAlign(CENTER, CENTER)
  textSize(16)

  -- Display the original and converted values.
  text(`$originalend : $convertedend`, 50, 50)

  describe('The text "A : 65" written in black on a gray background.')
end
```

## Syntax

```lua
unchar(n)
```

## Parameters

| Parameter | |
| - | -- |
| n | String: value to convert. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
