# docker-process
A collection of short-lived docker containers that process various types of files.

## Images

### Pixel sort

Source: https://pypi.org/project/pixelsort/
Documentation: https://github.com/satyarth/pixelsort#usage

|Parameter |	Flag |	Description|
|---|---|---|
|Interval function 	|-i| 	Controls how the intervals used for sorting are defined. See below for more details and examples. Threshold by default.|
|Output path 	|-o| 	Path of output file. Uses the current time for the file name by default.|
|Randomness 	|-r| 	What percentage of intervals not to sort. 0 by default.|
|Threshold (lower) 	|-t| 	How dark must a pixel be to be considered as a 'border' for sorting? Takes values from 0-1. 0.25 by default. Used in edges and threshold modes.|
|Threshold (upper) 	|-u| 	How bright must a pixel be to be considered as a 'border' for sorting? Takes values from 0-1. 0.8 by default. Used in threshold mode.|
|Char. length 	|-c| 	Characteristic length for the random width generator. Used in mode random and waves.|
|Angle 	|-a| 	Angle at which you're pixel sorting in degrees. 0 (horizontal) by default.|
|External interval file 	|-f| 	Image used to define intervals. Must be black and white.|
|Sorting function 	|-s| 	Sorting function to use for sorting the pixels. Lightness by default.|
|Mask 	|-m| 	Image used for masking parts of the image.|

Interval functions

|Interval function | 	Description|
|---|---|
|random| 	Randomly generate intervals. Distribution of widths is linear by default. Interval widths can be scaled using clength.|
|edges| 	Performs an edge detection, which is used to define intervals. Tweak threshold with threshold.|
|threshold| 	Intervals defined by lightness thresholds; only pixels with a lightness between the upper and lower thresholds are sorted.|
|waves| 	Intervals are waves of nearly uniform widths. Control width of waves with clength.|
|file| 	Intervals taken from another specified input image. Must be black and white, and the same size as the input image.|
|file-edges| 	Intevals defined by performing edge detection on the file specified by -f. Must be the same size as the input image.|
|none| 	Sort whole rows, only stopping at image borders.|

Sorting Functions

|Sorting function 	|Description|
|---|---|
|lightness | 	Sort by the lightness of a pixel according to a HSV representation.|
|hue | 	Sort by the hue of a pixel according to a HSV representation.|
|saturation | 	Sort by the saturation of a pixel according to a HSV representation.|
|intensity | 	Sort by the intensity of a pixel, i.e. the sum of all the RGB values.|
|minimum | 	Sort on the minimum RGB value of a pixel (either the R, G or B).|


## Video

### Annotate Scene Changes

Annotates scene changes in an input video file.
Exports the first frame of each scene.
Saves each scene timecode to a `txt` file.

FFMpeg command: `ffmpeg -i inputvideo.mp4 -filter_complex \"select='gt(scene,0.3)',metadata=print:file=time.txt\" -vsync vfr img%03d.png`

### Split into frames , extract audio



### combine frames into video, combine with audio




## Audio

### Convert an audio clip to midi

Source: https://pypi.org/project/audio-to-midi/
Documentation: https://github.com/tiagoft/audio_to_midi

Input: Audio file
Output: `.mid` Midi file

Given an audio file, converts the audio midi.
Intended for converting a single stream, so it may come out garbled.
