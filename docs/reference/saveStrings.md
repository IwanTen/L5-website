# saveStrings()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Saves an `Array` of `String`s to a file, one per line.

The first parameter, `list`, is an array with the strings to save.

The second parameter, `filename`, is a string that sets the file's name.
For example, calling `saveStrings(['0', '01', '011'], 'data.txt')` saves
the array `['0', '01', '011']` to a file called `data.txt` on the user's
computer.

The third parameter, `extension`, is optional. If a string is passed, as in
`saveStrings(['0', '01', '0`1'], 'data', 'txt')`, the second parameter will
be interpreted as the file name and the third parameter as the extension.

The fourth parameter, `isCRLF`, is also optional, If `true` is passed, as
in `saveStrings(['0', '01', '011'], 'data', 'txt', true)`, then two
characters, `\r\n` , will be added to the end of each string to create new
lines in the saved file. `\r` is a carriage return (CR) and `\n` is a line
feed (LF). By default, only `\n` (line feed) is added to each string in
order to create new lines.

Note: The browser will either save the file immediately or prompt the user
with a dialogue window.

## Examples

![saveStrings example 1](assets/saveStrings1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Style the text.
  textAlign(LEFT, CENTER)
  textFont('Courier New')
  textSize(12)

  -- Display instructions.
  text('Double-click to save', 5, 50, 90)

  describe('The text "Double-click to save" written in black on a gray background.')
end

-- Save the file when the user double-clicks.
function doubleClicked()
  if (mouseX > 0  and  mouseX < 100  and  mouseY > 0  and  mouseY < 100) 
    -- Create an array.
    local data = ['0', '01', '011']

    -- Save the text file.
    saveStrings(data, 'data.txt')
  end
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
