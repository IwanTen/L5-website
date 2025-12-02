# month()
 
Returns the current month as a number from 1–12.

## Examples

![month example 1](assets/month1.webp)

```lua
function setup()
  size(100, 100)

  background(200)
  fill(0)

  -- Get the current month.
  local m = month()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)

  -- Display the month.
  text('Current month: '..m, 10, 50, 80)

  describe('The text "Current month: '..m..'" written in black on a gray background.')
end
```

## Returns

Integer: current month between 1 and 12.

## Related

* [year()](year.md)
* [day()](day.md)
* [hour()](hour.md)
* [minute()](minute.md)
* [second()](second.md)

