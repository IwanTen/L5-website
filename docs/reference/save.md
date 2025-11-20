# save()
 
**Note: This page was automatically ported from p5.js to L5 and hasn't yet been checked, fixed and updated. The code is likely incorrect, and the description or parameters might be wrong!**

Saves a given element(image, text, json, csv, wav, or html) to the client's
computer. The first parameter can be a pointer to element we want to save.
The element can be one of p5.Element,an Array of
Strings, an Array of JSON, a JSON object, a p5.Table
, a p5.Image, or a p5.SoundFile (requires
p5.sound). The second parameter is a filename (including extension).The
third parameter is for options specific to this type of object. This method
will save a file that fits the given parameters.
If it is called without specifying an element, by default it will save the
whole canvas as an image file. You can optionally specify a filename as
the first parameter in such a case.
<strong>Note that it is not recommended to
call this method within draw, as it will open a new save dialog on every
render.</strong>

## Examples

![save example 1](assets/save1.webp)

```lua
-- Saves the canvas as an image
 cnv = size(300, 300)
 save(cnv, 'myCanvas.jpg')

 -- Saves the canvas as an image by default
 save('myCanvas.jpg')
 describe('An example for saving a canvas as an image.')
```

## Related

* [rect()](rect.md)
* [ellipse()](ellipse.md)
