---
layout: documentation
title: Audio Effect
subtitle: Sounds & Music
categories: documentation
---

Provides the reproduction of audio effects for Game Events. The Audio Files are loaded using an event key, which later will be used to play the audio effect. It is recommended to use 16-bit mono wave files for uncompressed audio and IMA4 for lossy compressed audio, but MP3 is also supported.

Although the AudioEffect class has its own stop and volume functionality, it can be overridden using the mute and enable methods of the Audio Module.  


### New
Returns a new instance of the AudioEffect class:

```ruby
audio_effect = AudioEfect.new
```

### Add
Loads a new audio file with its event key:

```ruby
audio_effect.add(:light_speed_jump, 'light_speed_jump.caf')
```

### []
Gets the audio related to the event key:

```ruby
audio_effect[:light_speed_jump]
```

### []=
Loads a new audio file with its event key:

```ruby
audio_effect[:light_speed_jump] = 'light_speed_jump.caf'
```

[note The []= and add method are equivalent.]

### Play
Starts the Audio Effect playback and returns the playback identifier:

```ruby
playback_identifier = audio_effect.play :light_speed_jump
```

#### Options:
**pitch:** - Float - *0.5 - 2.0* - Default: 1.0
The Audio Effect reproduction speed.

**pan:** - Float - *-1.0 - 1.0* - Default: 0.0
Play back the effect on the Left or Right channel. Please note that this option only works on mono audio files.

**gain:** - Float *0.0 - 1.0* - Default: 1.0
Attenuation or Amplification of the audio playback.

### Stop
Stops the Audio Effect reproduction based on the playback identifier:

```ruby
audio_effect.stop playback_identifier
```

### Remove
Unloads the audio file assigned to the event key:

```ruby
audio_effect.remove : light_speed_jump
```

### Volume
Gets and Sets the playback volume:

```ruby
audio_effect.volume = 0.5

p "The effect volume is: #{audio_effect.volume}"
```

[note The playback volume range starts in 0.0 and ends in 1.0.]