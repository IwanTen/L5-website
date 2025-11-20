# loadFont()

Loads a font and creates a font object. `loadFont()` can load fonts in either .otf or .ttf format. Loaded fonts are used to style text in the window.

The parameter `path` is the path to a font file. Paths to local files should be relative. For example, `'assets/inconsolata.otf'`. The Inconsolata font used in the following examples can be downloaded for free <a href="https://www.fontsquirrel.com/fonts/inconsolata/" target="_blank">here</a>. 

## Examples

![loadFont example 1](assets/loadFont1.webp)

```lua
local font
function setup()
  size(100,100)
  fill('deeppink')
  font = loadFont('assets/inconsolata.otf')
  textFont(font)
  textSize(36)
  background(255)
  text('L5', 10, 50)

  describe('The text "L5" written in pink on a white background.')
end
```

## Parameters

| Parameter |                                                    |
| -         | --                                                 |
| path      | String: path of the font to be loaded.             |

## Related

* [textFont()](textFont.md)
* [text()](text.md)
* [textWidth()](textWidth.md)
* [textAlign()](textAlign.md)

