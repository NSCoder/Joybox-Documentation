---
layout: documentation
title: Audio
subtitle: Sounds & Music
categories: documentation
---

Provides support methods for controlling the audio playback of the Game. 

[tip You can mute the BackgroundAudio and AudioEffects of the all game using the Audio mute method.]

### Mute
Mutes all the game audio:

```ruby
Audio.mute
```
[note It does not stop the audio playback on the BackgroundAudio and AudioEffect class.]

### Unmute
Resumes the audio reproduction:

```ruby
Audio.unmute
```

### Muted?
Returns true if the audio playback is muted:

```ruby
Audio.muted?
```

### Enable
Enables the audio reproduction:

```ruby
Audio.enable
```

### Disable
Disables all the game audio:

```ruby
Audio.disable
```

[note It stops the audio playback on the BackgroundAudio and AudioEffect class.]

### Enabled?
Returns true if the audio reproduction is enabled:

```ruby
Audio.enabled?
```