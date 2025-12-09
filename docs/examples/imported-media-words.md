# Words

The [text()](/reference/text.md) function is used for inserting text into the canvas. You can change the font and text size using the [loadFont()](/reference/loadFont.md) and [textSize()](/reference/textSize.md) functions. The text can be aligned left, center, or right with the [textAlign()](/reference/textAlign.md) function, and, like shapes, text can be colored with [fill()](/reference/fill.md).

![Three columns of the words 'ichi', 'ni', 'san' and 'shi' on a white background. The first column is right aligned, the middle column is center aligned, the left column is left aligned.](/assets/examples/imported-media-words.webp)


```lua
require("L5")

-- Define global variables: font and fontSize.
local font
local fontsize = 40

function setup()
  windowTitle('words')

  describe(
    'Three columns of the words “ichi,” “ni,” “san,” and “shi” on a white background. The first column is right aligned, the middle column is center aligned, and the left column is left aligned.'
  )

  -- Load the font's file in the canvas's assets directory.
  -- loadFont() accepts .ttf bitmap or .otf files.
  font = loadFont('assets/SourceSansPro-Regular.otf')

  size(710, 400)
  background(250)

  -- Set the text styling to the predefined font and font size.
  textFont(font)
  textSize(fontsize)

  -- Align the text to the right and run the drawWords() function
  -- to generate the left column of text.
  textAlign(RIGHT, CENTER)
  drawWords(width * 0.25)

  -- Align the text to the center and run the drawWords() function
  -- to generate the middle column of text.
  textAlign(CENTER, CENTER)
  drawWords(width * 0.5)

  -- Align the text to the left and run the drawWords() function
  -- to generate the left column of text.
  textAlign(LEFT, CENTER)
  drawWords(width * 0.75)
end

function drawWords(x)
  -- The drawWords() function creates four text() instances,
  -- using the x coordinate supplied by each column created
  -- in setup().
  fill(80)

  text('ichi', x, 80)

  text('ni', x, 150)

  text('san', x, 220)

  text('shi', x, 290)
end
```

## Related References

* [loadFont()](/reference/loadFont)
* [text()](/reference/text)
* [textAlign()](/reference/textAlign)
* [textSize()](/reference/textSize)

## Related Examples

* [Words](imported-media-words.md) - Load fonts and draw text.
* [Copy Image Data](imported-media-copy-image-data.md) - Paint from an image file onto the canvas.
* [Image Transparency](imported-media-image-transparency.md) - Make an image translucent on the canvas.
* [Video Player](imported-media-video.md) - Create a player for video playback and stylize in the window

---

Words: Revised by [Kasey Lichtlyter](https://www.klich.co/). Edited and maintained by [p5.js Contributors](https://github.com/processing/p5.js?tab=readme-ov-file#contributors) and [Processing Foundation](https://processingfoundation.org/people). Licensed under [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/).


