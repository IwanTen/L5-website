# Playing videos

L5 has the ability to play video files built-in to the core of the language rather than requiring an external library. The current video encoding format in L5 is Ogg Theora (ogv).

This page contains an introduction and extended information on working with video in L5.

### Example loading and playing a video in L5

```lua
function setup()
  video = loadVideo("video.ogv")
  
  -- Start playing the video
  video:play()
end

function draw()
  background(0) 
  
  -- Draw frames of the video to the canvas
  image(video, 0, 0, width, height)
end 
```

## Comparison to video in Processing and p5.js

### Processing

Video playback in Processing requires importing the [Video library](https://processing.org/tutorials/video). There are some added objects and methods that vary somewhat from the core Processing commands.

### p5.js

p5.js allows [video playback](https://p5js.org/examples/imported-media-video/) by creating a video DOM element that is initially outside the canvas element. This can optionally be hidden and video frames can be drawn to the canvas.


## Supported playback formats

The only supported format in L5 currently is **Ogg Theora** (not to be confused with Ogg Vorbis audio) with optional Ogg Vorbis audio tracks. 

## Video decoding conditions and recommended resolutions

Video decoding is performed on the CPU, as GPUs don't have hardware acceleration for decoding Theora videos. Modern desktop CPUs can decode Ogg Theora videos at 1440p @ 60 FPS or more, but low-end mobile CPUs will likely struggle with high-resolution videos.

To ensure your videos decode smoothly on varied hardware:

* When developing programs for desktop platforms, it's recommended to encode in 1080p at most (preferably at 30 FPS). Most people are still using 1080p or lower resolution displays, so encoding higher-resolution videos may not be worth the increased file size and CPU requirements.
* When developing programs for mobile or web platforms, it's recommended to encode in 720p at most (preferably at 30 FPS or even lower). The visual difference between 720p and 1080p videos on a mobile device is usually not that noticeable.

## Recommended Theora encoding settings

A word of advice is to **avoid relying on built-in Ogg Theora exporters** (most of the time). There are 2 reasons you may want to favor using an external program to encode your video:

* Some programs such as Blender can render to Ogg Theora. However, the default quality presets are usually very low by today's standards. You may be able to increase the quality options in the software you're using, but you may find the output quality to remain less than ideal (given the increased file size). This usually means that the software only supports encoding to constant bit rate (CBR), instead of variable bit rate (VBR). VBR encoding should be preferred in most scenarios as it provides a better quality to file size ratio.
* Some other programs can't render to Ogg Theora at all.

In this case, you can **render the video to an intermediate high-quality format** (such as a high-bitrate H.264 video) then re-encode it to Ogg Theora. Ideally, you should use a lossless or uncompressed format as an intermediate format to maximize the quality of the output Ogg Theora video, but this can require a lot of disk space.

[FFmpeg](https://ffmpeg.org/) (CLI) is a popular open source tool for this purpose. FFmpeg has a steep learning curve, but it's a powerful tool.

Here are example FFmpeg commands to convert an MP4 video to Ogg Theora. Since FFmpeg supports a lot of input formats, you should be able to use the commands below with almost any input video format (AVI, MOV, WebM, …).

*Note: Make sure your copy of FFmpeg is compiled with libtheora and libvorbis support. You can check this by running `ffmpeg` without any arguments, then looking at the `configuration:` line in the command output.*

*Warning: Current official FFmpeg releases have some bugs in their Ogg/Theora multiplexer. It's highly recommended to use one of the latest static daily builds, or build from their master branch to get the latest fixes.*

### Balancing quality and file size

The video quality level (`-q:v`) must be between `1` and `10`. Quality `6` is a good compromise between quality and file size. If encoding at a high resolution (such as 1440p or 4K), you will probably want to decrease `-q:v` to `5` to keep file sizes reasonable. Since pixel density is higher on a 1440p or 4K video, lower quality presets at higher resolutions will look as good or better compared to low-resolution videos.

The audio quality level (`-q:a`) must be between `-1` and `10`. Quality `6` provides a good compromise between quality and file size. In contrast to video quality, increasing audio quality doesn't increase the output file size nearly as much. Therefore, if you want the cleanest audio possible, you can increase this to 9 to get perceptually lossless audio. This is especially valuable if your input file already uses lossy audio compression. Higher quality audio does increase the CPU usage of the decoder, so it might lead to audio dropouts in case of high system load. See [this page](https://wiki.hydrogenaudio.org/index.php?title=Recommended_Ogg_Vorbis#Recommended_Encoder_Settings) for a table listing Ogg Vorbis audio quality presets and their respective variable bitrates.

The **GOP (Group of Pictures) size** (`-g:v`) is the max interval between keyframes. Increasing this value can improve compression with almost no impact on quality. The default size (`12`) is too low for most types of content, it's therefore recommended using higher GOP values before reducing video quality. Compression benefits will fade away as the GOP size increases though. Values between `64` and `512` usually give the best compression.

*Note: Higher GOP sizes will increase max seek times with a sudden increase when going beyond powers of two starting at `64`. Max seek times with GOP size `65` can be almost twice as long as with GOP size `64`, depending on decoding speed.*

### FFmpeg: Convert while preserving original video resolution

The following command converts the video while keeping its original resolution. The video and audio's bitrate will be variable to maximize quality while saving space in parts of the video/audio that don't require a high bitrate (such as static scenes).

```sh
ffmpeg -i input.mp4 -q:v 6 -q:a 6 -g:v 64 output.ogv
```

### FFmpeg: Resize the video then convert it

The following command resizes a video to be 720 pixels tall (720p), while preserving its existing aspect ratio. This helps decrease the file size significantly if the source is recorded at a higher resolution than 720p:

```sh
ffmpeg -i input.mp4 -vf "scale=-1:720" -q:v 6 -q:a 6 -g:v 64 output.ogv
```

L5 library  
CC BY 4.0  

*Contains adapted text from: © Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0)*
