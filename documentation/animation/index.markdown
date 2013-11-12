---
layout: documentation
title: Animation
subtitle: Actions & Animations
categories: documentation
---

The Animation class provides the frame by frame animations to Sprites. The frames should be retrieved using a Sprite Sheet and a sprite frame Cache for optimal performance.

```ruby
SpriteFrameCache.frames.add file_name: 'animation.plist'

flying_frames = SpriteFrameCache.frames.where prefix: 'ship', suffix: '.png'

animation = Animation.new frames: flying_frames
```

In the previous example the sprite sheet plist file is loaded into the Sprite Frame Cache, and using its where method it retrieves an array of frames that will become the key-frames for the animation.

[more-information] For more information, see: [Sprite Frame Cache documentation page](/sprite-frame-cache).

#### Run a Animation
The Animation cannot be run by itself in the Sprite, it needs to be wrapped into an Action. The following is the appropriate way of archiving this:

```ruby
animation = Animation.new frames: flying_frames

sprite.run_action animation.action
```

The Animation's action can be combined with other actions as well, like the Delay or Callback.

[more-information] For more information, see: [Delay documentation page](/callback).

[more-information] For more information, see: [Callback documentation page](/callback).

### New
Returns a new instance of the Animation class:

```ruby
Animation.new frames: animation_frames
```

#### Options
**delay_per_unit:** - Float - Default: 0.1
Number of seconds of delay per unit.

**delay_units:** - Float - Default: The number of frames
Number of delay units in the Animation.

**restore_original_frame:** - Boolean
Should restore the original frame after completion?

**loops:** - Integer
How many times the animation is going to loop.

### Delay per Unit
Retrieve or update the delay per unit:

```ruby
animation.delay_per_unit = 0.5

# The following is 0.5
animation.delay_per_unit 
```

### Delay Units
Gets or sets the total delay units of the Animation:

```ruby
animation.delay_units = 18

# The following is 18
animation.delay_units
```

### Duration
Retrieves the Animation's duration:

```ruby
animation.delay_per_unit = 0.2
animation.delay_units = 18

# The following is 3.6
animation.duration 
```

[note The Animation duration is the product of Delay Units and Delay per Unit.]

### Loops
Gets or sets how many times the Animation is going to loop:

```ruby
animation.loops = 2

# The following is 2
animation.loops 
``` 

### Restore Original Frame
Retrieves or updates if the Animation should restore the original frame:

```ruby
animation.restore_original_frame = false

# The following is false
animation.restore_original_frame
```

### Add Frame
Adds a new frame into the Animation:

```ruby
animation.add_frame frame: SpriteFrameCache.frames[0]

animation.add_frame file_name: 'speed_of_light.png'

animation.add_frame texture: mother_ship_texture, rect: [[0, 0], [200, 200]]
```

### Action
Returns the Animation wrapped into an Action:

```ruby
sprite.run_action animation.action
```

[note This is the proper way to run an Animation into a Sprite.]