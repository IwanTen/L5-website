# textWrap()

Sets the style for wrapping text when
text() is called.

The parameter, `style`, can be one of the following values:

`WORD` starts new lines of text at spaces. If a string of text doesn't
have spaces, it may overflow the text box and the canvas. This is the
default style.

`CHAR` starts new lines as needed to stay within the text box.

`textWrap()` only works when the maximum width is set for a text box. For
example, calling `text('Have a wonderful day', 0, 10, 100)` sets the
maximum width to 100 pixels.

Calling `textWrap()` without an argument returns the current style.

## Examples

![textWrap example 1](assets/textWrap1.webp)

```lua
function setup()
  size(100, 100)

  background(200)

  -- Style the text.
  textSize(20)
  textWrap(WORD)

  -- Display the text.
  text('Have a wonderful day', 0, 10, 100)

  describe('The text "Have a wonderful day" written across three lines.')
end
```

![textWrap example 2](assets/textWrap2.webp)

```lua
function setup() 
  size(100, 100)

  background(200)

  -- Style the text.
  textSize(20)
  textWrap(CHAR)

  -- Display the text.
  text('Have a wonderful day', 0, 10, 100)

  describe('The text "Have a wonderful day" written across two lines.')
end
```

## Syntax

```lua
textWrap(style)
```

## Parameters

| Parameter |                                                    |
| -         | --                                                 |
| style     | Constant: text wrapping style, either WORD or CHAR |

## Related

* [text()](text.md)
* [textFont()](textFont.md)
* [textWidth()](textWidth.md)
* [textAlign()](textAlign.md)
