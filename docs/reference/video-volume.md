# :volume()

Changes video playback volume `0` to `1`, or reports current video volume without specified argument.

`0` is silent. `1` is maximum volume level.

**Note: Currently L5 can only play ogv (Ogg Theora) video files. Use an external program such as [Handbrake](https://handbrake.fr) or ffmpeg (command line) to convert mp4, avi, mkv, and mov codecs first.**

## Examples

```lua
function setup()
  windowTitle("loadVideo example")

  video = loadVideo("assets/heads.ogv")
  video:loop()

  describe("A basic example of playing a looping video. The volume playback is dependent on the mouse's horizontal position within the window. Pressing the mouse prints current volume level between 0 and 1.")
end

function draw()
  background(51) 

  -- map vol to mouse position within window
  local vol = map(mouseX,0,width,0,1)
  video:volume(vol)
  
  image(video, 0, 0, width, height)
end 

function mousePressed()
  print("volume: "..video:volume())
end
```

## Syntax

```lua
videofile:volume(level)
```

```lua
videofile:volume()
```

## Parameters

| Parameter |                                                                     |
| -         | --                                                                  |
| volume    | Number: number between 0 and 1 to specify total volume of video.    |


## Returns

Number: Total seconds since start of playback.

## Related

* [loadVideo()](loadVideo.md)
* [image()](image.md)
* [:loop()](video-loop.md)
* [:pause()](video-pause.md)
* [:play()](video-play.md)
* [:seek()](video-seek.md)
* [:time()](video-time.md)
