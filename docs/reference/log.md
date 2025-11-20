# log()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Calculates the natural logarithm (the base-e logarithm) of a number.

`log()` expects the `n` parameter to be a value greater than 0 because
the natural logarithm is defined that way.

## Examples

![log example 1](assets/log1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Top-left.
  local d = log(50)
  circle(33, 33, d)

  -- Bottom-right.
  d = log(500000000)
  circle(67, 67, d)

  describe('Two white circles. The circle at the top-left is small. The circle at the bottom-right is about five times larger.')
end
```

## Related

* [exp()](exp.md)
* [pow()](pow.md)
