# min()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Returns the smallest value in a sequence of numbers.

The version of `min()` with one parameter interprets it as an array of
numbers and returns the smallest number.

The version of `min()` with two or more parameters interprets them as
individual numbers and returns the smallest number.

## Examples

![min example 1](assets/min1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Calculate the minimum of 10, 5, and 20.
  local m = min(10, 5, 20)

  -- Style the text.
  textAlign(CENTER)
  textSize(16)

  -- Display the min.
  text(m, 50, 50)

  describe('The number 5 written in the middle of a gray square.')
end
```

## Syntax

```lua
min(n0, n1)
```

## Parameters

| Parameter | |
| - | -- |
| n0 | Number: first number to compare. |
| n1 | Number: second number to compare. |

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
