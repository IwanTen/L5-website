# minute()
 
Returns the current minute as a number from 0–59.

## Examples

![minute example 1](assets/minute1.webp)

```lua
function setup()
  size(100, 100)

  background(200)
  fill(0)

  -- Get the current minute.
  local m = minute()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)

  -- Display the minute.
  text('Current minute: '..m, 10, 50, 80)

  describe('The text "Current minute: '..m..'" written in black on a gray background.')
end
```

## Returns

Integer: current minute between 0 and 59.

## Related

* [year()](year.md)
* [month()](month.md)
* [day()](day.md)
* [hour()](hour.md)
* [second()](second.md)

