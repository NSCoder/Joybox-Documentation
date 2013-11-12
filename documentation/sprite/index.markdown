---
layout: documentation
title: Sprite
subtitle: Essentials
categories: documentation
---

The class Sprite represents a two dimensional image that can be manipulated independently, so they can be moved, rotated or animated without affecting other Sprites in the same scene.

They can be initialized in multiple ways: with an image file, a frame from a sprite sheet or using a Texture. The recommended way is always try to use a frame from a Sprite Sheet.

#### Sprite Sheets
When the sprite is created not using a Sprite Sheet it should be added into the parent class as follows:

```ruby
sprite = Sprite.new file_name: 'space_ship.png'

layer << sprite
```

But when using a Sprite Sheet is different, the sprite needs to be added as a child of the SpriteBatch:

```ruby
# Load the SpriteBatch with the sprite sheet
sprite_batch = SpriteBatch.new file_name 'sprite_sheet.png'

# Add the SpriteBatch instance as a child of the parent
self.add_child sprite_batch

# Load the sprite sheet frames into the SpriteFrameCache
SpriteFrameCache.frames.add file_name 'sprite_sheet_frames.plist'

# Using a frame name included in the sprite sheet frames load the Sprite
sprite = Sprite.new frame_name: 'mother_ship_01.png'

# Add the Sprite as a child of the SpriteBatch instance
sprite_batch.add_child sprite 
```
In the previous example: first the SpriteBatch is loaded with the  sprite sheet image and added to the parent class, next the sprite frames are loaded into the SpriteFrameCache and finally the Sprite is loaded with the name of a sprite sheet frame.

[more-information] For more information, see: [Sprite Batch documentation page](../sprite-batch) 

[more-information] For more information, see: [Sprite Frame Cache documentation page](../sprite-frame-cache).

[warning Using to many Sprites without a Sprite Sheet will affect severely the game performance.]


### New
Creates a new instance of Sprite:

```ruby
# Loads the Sprite from an image file
sprite = Sprite.new file_name: 'space_ship.png'

# Loads the Sprite from a CCTexture instance
sprite = Sprite.new texture: space_texture

# Loads the Sprite from a sprite sheet frame name
sprite = Sprite.new frame_name: 'mother_ship_01.png'

# Loads the Sprite from a sprite sheet frame
sprite = Sprite.new frame: SpriteFrameCache.frames['mother_ship_02.png']

# Loads the Sprite from a CGImage
sprite = Sprite.new cg_image: asteroid_image, key: 'asteroid' 
```

#### Options
**position:** - Point
Sets the Sprite's initial position.

**rect:** - Rect *Available only on file_name: and texture:*
Sets which portion of the image file or the texture should be loaded into the Sprite.


#### Custom Options
The Sprite initialization supports passing custom arguments that will be stored as properties into the instance for later use:

```ruby
sprite = Sprite.new file_name: 'space_ship.png', speed: 200, damage: 10, health: 5

# The following is 200
sprite[:speed]

# The following is 10
sprite[:damage]

# The following is 5
sprite[:health]
```

[tip Very useful to avoid excessive inheritance in the Game Objects.]

### []
Retrieves a Sprite's property:

```ruby
sprite = Sprite.new file_name: 'space_ship.png', speed: 200

# The following is 200
sprite[:speed]
```

### []=
Updates a Sprite property:

```ruby
sprite[:life] = 10

# The following is 10
sprite[:life]
```

### Add Child
Adds a new child to the Sprite instance:

```ruby
sprite.add_child(other_sprite)
```

[note Only other Sprites are recommended to be added to the Sprite instance.]

### <<
Push a new child into a Sprite instance:

```ruby
sprite << other_sprite
```

[note The << and add_child methods are equivalent.]

### Add Children
Adds multiple children to the Sprite instance:

```ruby
children = [sprite_one, sprite_two, sprite_three]

sprite.add_children children 
```

### Run Action
Runs an action into the Sprite instance:

```ruby
sprite.run_action Rotate.by angle: 90
```

### Stop Action
Stop a Sprite's running action:

```ruby
rotate = Rotate.by angle: 90

sprite.run_action rotate
sprite.stop_action rotate
```

### Stop All Actions
Stops all actions running on the Sprite's instance:

```ruby
sprite.stop_all_actions
```

### Number of Running Actions
Returns the number of actions running on the Sprite:

```ruby
sprite.run_action Rotate.by angle: 90

# The following is 1
sprite.number_of_running_actions
```

### Running Actions?
Retrieves if the Sprite is running any action:

```ruby
sprite.run_action Rotate.by angle: 90

# The following is true
sprite.running_actions?
```

### Schedule Update
Starts receiving the Game Loop calls on the Sprite instance:

```ruby
schedule_update do |dt|

end
```

#### Block Parameters
**dt** - Float
The delta time between Game Loop calls.

[warning Do not execute big time consuming operations on the Game Loop, it will affect drastically the performance of the game.]

### Position
Gets or sets the Sprite position:

```ruby
sprite.position = [200, 200]

p "The sprite position is: #{sprite.position.x}, #{sprite.position.y}"
```

### Frame
Gets or sets the frame that is being displayed in the Sprite:

```ruby
sprite.frame = SpriteFrameCache.frames['space_ship_02.png'] 

p "The sprite frame is: #{sprite.frame}"
```

[tip The previous example is the correct way of changing a Sprite image.]

### Displays Frame?
Returns if a frame is being displayed by the Sprite:

```ruby
new_frame = SpriteFrameCache.frames['space_ship_02.png']
sprite.frame = new_frame

# The following is true
sprite.displays_frame? new_frame
```

### File Name
Sets a new image file name for the Sprite:

```ruby
sprite.file_name = 'big_asteroid.png'
```

[warning This method will affect the Game performance, use sprite sheets and the Sprite's frame method to avoid this.]

### Flip
Flips the Sprite in the X or Y axis:

```ruby
sprite.flip x: true
sprite.flip y: false

sprite.flip x: true, y: false
```

### Bounding Box
Returns the rect that contains the entire Sprite:

```ruby
sprite.bounding_box
```

[warning The bounding box does not recognize the alpha channel of the image.]


