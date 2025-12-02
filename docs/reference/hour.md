# hour()

Returns the current hour as a number from 0–23.

## Examples

![hour example 1](assets/hour1.webp)

```lua
function setup()
  size(100, 100)

  background(200)
  fill(0)

  -- Get the current day.
  local h = hour()

  -- Style the text.
  textAlign(LEFT, CENTER)
  textSize(12)

  -- Display the day.
  text("Current hour: "..h, 20, 50, 60)

  describe('The text "Current hour: '..h..'" written in black on a gray background.')
end
```

## Returns

Integer: current hour between 0 and 23.

## Related

* [year()](year.md)
* [month()](month.md)
* [day()](day.md)
* [minute()](minute.md)
* [second()](second.md)
