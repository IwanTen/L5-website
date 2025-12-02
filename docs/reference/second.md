# second()
 
Returns the current second as a number from 0–59.

## Examples

![second example 1](assets/second1.webp)

```lua
function setup()
  size(100, 100)

  background(200)
  fill(0)

  -- Get the current second.
  local s = second()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)

  -- Display the second.
  text('Current second: '..s, 10, 50, 80)

  describe('The text "Current second: '..s..'" written in black on a gray background.')
end
```

## Returns

Integer: current second between 0 and 59.

## Related

* [year()](year.md)
* [month()](month.md)
* [day()](day.md)
* [hour()](hour.md)
* [minute()](minute.md)

