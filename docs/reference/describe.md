# describe()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Creates a screen reader-accessible description of the canvas in the command line.

The parameter `text`, is the description of the canvas.

## Examples

![describe example 1](assets/describe1.webp)

```lua
function setup()
  background('pink')

  -- Draw a heart.
  fill('red')
  noStroke()
  circle(67, 67, 20)
  circle(83, 67, 20)
  triangle(91, 73, 75, 95, 59, 73)

  -- Add a general description of the canvas.
  describe('A pink square with a red heart in the bottom-right corner.')
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
