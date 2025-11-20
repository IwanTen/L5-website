# loadStrings()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Loads a text file to create an `Array`.

The first parameter, `path`, is always a string with the path to the file.
Paths to local files should be relative, as in
`loadStrings('/assets/data.txt')`. URLs such as
`'https://example.com/data.txt'` may be blocked due to browser security.

The second parameter, `successCallback`, is optional. If a function is
passed, as in `loadStrings('/assets/data.txt', handleData)`, then the
`handleData()` function will be called once the data loads. The array
created from the text data will be passed to `handleData()` as its only
argument.

The third parameter, `failureCallback`, is also optional. If a function is
passed, as in `loadStrings('/assets/data.txt', handleData, handleFailure)`,
then the `handleFailure()` function will be called if an error occurs while
loading. The `Error` object will be passed to `handleFailure()` as its only
argument.

## Examples

![loadStrings example 1](assets/loadStrings1.webp)

```lua
local myData
function setup()
  size(100, 100)
  
  -- Load the text and create an array.
  myData = loadStrings('/assets/test.txt')

  background(200)

  -- Select a random line from the text.
  local phrase = random(myData)

  -- Style the text.
  textAlign(LEFT, CENTER)
  textFont('Courier New')
  textSize(12)

  -- Display the text.
  text(phrase, 10, 50, 90)

  describe(`The text "$phraseend" written in black on a gray background.`)
end
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
