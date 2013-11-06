---
layout: documentation
title: Sprite Batch
subtitle: Essentials
categories: documentation
---

The Sprite Batch class enables the batch drawing of all the items added as children. This will increase the performance and the memory utilization of the game. In order to accomplish this, the Sprite Batch needs to be loaded with a sprite sheet image.

Another thing that the SpriteBatch needs to know is where in the sprite sheet a particular sprite is placed (known as frame). For this another class comes into play: the SpriteFrameCache class contains all the necessary information about every frame in the sprite sheet.

[more-information] For more information: see: [Sprite Frame Cache documentation page](../sprite-frame-cache).

#### Texture Binding 
Every time a new single sprite needs to be drawn on the screen a binding between the texture (the uncompressed raw image) and the openGL context occur, which is very expensive. But when a Sprite Batch is used, only the sprite sheet is bound because all of the SpriteBatch children are included in it. 

[warning In order to work the Sprite Batch should be added as a child of a Scene or Layer, then the Sprites must be added to the SpriteBatch. For more information, see: the Sprite documentation page.]

### New
Creates a new instance of the Sprite Batch:

```ruby
sprite_batch = SpriteBatch.new file_name: 'sprite_batch.png'

sprite_batch = SpriteBatch.new texture: sprite_batch_texture
```

#### Options
**capacity:** Number - Default:29
The SpriteBatch maximum number of children.

### Add Child
Adds a new child to the SpriteBatch instance:

```ruby
sprite_batch.add_child(sprite)
```

[note The Sprites are the only classes can be children of a SpriteBatch.]

### <<
Push a new child into a SpriteBatch instance:

```ruby
sprite_batch << sprite
```

[note The << and add_child methods are equivalent.]

### Add Children
Adds multiple children to the SpriteBatch instance:

```ruby
children = [asteroid_sprite, mother_ship_sprite]

sprite_batch.add_children children 
```
