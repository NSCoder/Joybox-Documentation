---
layout: documentation
title: Background Audio
subtitle: Sounds & Music
categories: documentation
---

The BackgroundAudio class supports the playback of background music for the Game Scenes. The Audio files are loaded into the instance using keys, which also are used to tell which audio must be played. The supporting file formats are: AAC, HE-ACC, AMR, ALAC, iLBC, IMA4, Linear PCM (Uncompressed), µ-Law, a-Law and MP3.

Even if it has it's own volume, stop, and resume methods, they can be overridden by the Audio module mute and enable methods.

[warning The simultaneous playback of multiple background audios is not supported, the play method will check for an existing playing audio and will stop it before it plays the new one. The playback of background music and sound effects is supported by mixing the BackgroundAudio and AudioEffect classes.] 

### New
Returns a new instance of the BackgroundAudio class:

```ruby
background_audio = BackgroundAudio.new
```

### Add
Loads a new audio file with its identifier key:

```ruby
background_audio.add(:deep_space, 'deep_space.mp3')
```

### []
Retrieves an audio using its identifier key:

```ruby
background_audio[:deep_space]
```

### []=
Loads a new audio file with its identifier key:

```ruby
background_audio[:deep_space] = 'deep_space.mp3'
```

[note The []= and add method are equivalent.]

### Play
Plays the audio by its identifier key:

```ruby
background_audio.play :deep_space
```

#### Options:
**loop:** - Boolean *Optional*
The Background Audio should play in a loop?

### Stop
Stops the current audio playback:

```ruby
background_audio.stop
```

### Pause
Pauses the audio playback:

```ruby
background_audio.pause
```

### Resume
Resumes the audio playback if it has been paused:

```ruby
background_audio.play :deep_space
background_audio.pause

background_audio.resume
```

### Rewind
Restarts the audio playback from the beginning of the file:

```ruby
background_audio.play :deep_space

background_audio.rewind
```

### Playing?
Returns if the Background Audio instance is playing:

```ruby
background_audio.playing?
```

### Will Play?
Returns if the Background Audio will start the playback:

```ruby
background_audio.will_play?
```

### Volume
Gets and Sets the playback volume:

```ruby
background_audio.volume = 0.5

p "The music volume is: #{background_audio.volume}"
```

[note The playback volume range starts in 0.0 and ends in 1.0.]