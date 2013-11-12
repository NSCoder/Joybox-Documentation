---
layout: documentation
title: Sprite Frame Cache
subtitle: Essentials
categories: documentation
---

The Sprite Frame Cache provides all the related information on every frame inside a sprite sheet. For this to be accomplished a sprite sheet frames file (usually a plist file) needs to be provided.

It works together with the SpriteBatch class in order to support the sprite sheet functionality. For more information about how to load Sprites from a sprite sheet, see: [Sprite documentation page](../sprite).

[more-information] For more information, see: [SpriteBatch documentation page](../sprite-batch)

### Add
Add frames to the SpriteFrameCache:

```ruby
# Add frames from a sprite sheet frames file
SpriteFrameCache.frames.add file_name: 'sprite_frames.plist'

# Add one particular frame with a name
SpriteFrameCache.frames.add frame: sprite_frame name: 'star_ship.png'
```

#### Options
**texture:** - CCTexture *Available only on file_name:*
Complements a sprite sheet frames file with a texture.

**texture_file:** - String *Available only on file_name:*
Adds a texture file into the SpriteFrameCache instance.

### Remove
Removes one or more frames from the SpriteFrameCache:

```ruby
# Remove the frame named star_ship.png
SpriteFrameCache.frames.remove name: 'star_ship.png'

# Removes all the frames contained in the sprite sheet frames file
SpriteFrameCache.frames.remove file_name: 'sprite_frames.plist'

# Removes all the frames related to the texture
SpriteFrameCache.frames.remove texture: sprite_sheet_texture
```

### Remove All
Removes all the frames from the SpriteFrameCache:

```ruby
SpriteFrameCache.frames.remove_all
```

### Remove Unused Frames
Removes all the unused frames from the SpriteFrameCache:

```ruby
SpriteFrameCache.frames.remove_unused_frames
```

### Purge
Releases all the instances of the frames:

```ruby
SpriteFrameCache.purge
```

### []
Retrieves a frame from a SpriteFrameCache based on its name:

```ruby
sprite_frame = SpriteFrameCache.frames['star_ship.png']

p "The sprite frame is: #{sprite_frame}"
```

### []=
Sets a frame on the SpriteFrameCache:

```ruby
SpriteFrameCache['mother_ship_02.png'] = mother_ship_frame
```

### Where
Returns an array of frames result of an iteration in which the iterator index will be placed in the middle of a prefix and a suffix:

```ruby
sprite_frames = SpriteFrameCache.frames.where prefix: 'mother_ship', suffix: '.png'
```

In the previous example the search will begin with 'mother_ship1.png', if found, then it will look for 'mother_ship2.png' and so on, until the requested frame its not found.

[tip Commonly used to retrieve all the frames related to an animation, for example: 'walk_1.png', 'walk_2.png', 'walk_3.png' are retrieved using 'walk_' as prefix and '.png' as suffix.]

#### Options
**from:** - Number - Defaults: 1
From which number the iteration starts.

**to:** - Number
In which number the iteration should stop.

**order:** - Array
Overrides the iterator allowing the request for particular frames:

```ruby
sprite_frames = SpriteFrameCache.frames.where prefix: 'mother_ship', suffix: '.png', order: [1, 2, 1, 1]
```

The previous example will return the following frames: ['mother_ship1.png', 'mother_ship2.png', 'mother_ship1.png', 'mother_ship1.png]
