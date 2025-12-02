# describe()
 
Prints an accessibility description to the command line. The parameter text is the canvas description.

## Examples

![describe example 1](assets/describe1.webp)

```lua
function setup()
  size(100,100)
  background('pink')
  windowTitle('describe example')
  
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

## Syntax

```lua
describe(textdescription)
```

## Related

* [windowTitle()](windowTitle.md)
* [print()](print.md)
