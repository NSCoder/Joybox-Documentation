---
layout: page
title: "Sprites"
comments: false
sharing: false
footer: false
---

## Characters in Movement
### A subclass of CCSprite

## Initialization: Image File

Create a new instance using a single image file.

``` ruby
sprite = Sprite.new file_name:<file_name>, 
                    position:<point_on_the_screen>

# Add the sprite to the layer
layer << sprite
```

## Initialization: Sprite Batch

Having multiple sprites impacts the performance, for that purpose is better to implement a Sprite Batch and having a Sprite Sheet.

``` ruby
# Create a new sprite batch with the sprite sheet file
sprite_batch = SpriteBatch.new file_name: <sprite_sheet_file_name>

# Add the sprite batch to the layer
layer << sprite_batch

sprite = Sprite.new frame_name:<frame_name>,
                    position:<point_on_the_screen>

# Add the sprite to the batch node
sprite_batch << sprite
```

If you want to learn more about sprite sheets, see: [Sprite Sheets - Essential Facts Every Game Developer Should Know (Part 1)](http://www.codeandweb.com/what-is-a-sprite-sheet) & [Sprite Sheets - Essential Facts Every Game Developer Should Know (Part 2)](http://www.codeandweb.com/what-is-a-sprite-sheet-performance)


For more information, see: [CCSprite Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_sprite.html)