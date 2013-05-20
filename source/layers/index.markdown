---
layout: page
title: "Layers"
comments: false
sharing: false
footer: false
---

## Canvas & Gameplay
### A subclass of CCLayer

## Subclassing

To add functionality to the game is necessary to subclass the Layer class, which is done with the following:

``` ruby
class MyLayer < Joybox::Core::Layer

end
```

## Initialization

Create a new instance of a Layer:

``` ruby
layer = MyLayer.new

# Add the layer to the scene
scene << layer
```

## Set Up & Tear Down
The set up and tear down of any of the objects related to the Layer (like the Sprites), must be done in the on_enter and on_exit methods:

``` ruby
def on_enter
  # Initialize objects like Sprites
end

def on_exit
  # Perform any state clean if needed
end
```

## Handle User Touches

Handle any state of the user interaction on the screen:

```ruby
on_touches_began do |touches, event|

end

on_touches_moved do |touches, event|

end
 
on_touches_ended do |touches, event|

end

on_touches_cancelled do |touches, event|

end
```

# Subscribe to the Game Loop calls

There are two ways to receive the method calls of the game loop: the first using a block:

```ruby
schedule_update do |dt|

end
```

The other one is declaring a method for that purpose:
```ruby
# Invoke the following method on the on_enter method
schedule_update

def update(dt)

end
```

# Sceneless Layer
When you only have one layer and you don't want to create the complete Scene object to present it, you add the following to your Layer class:

``` ruby
class MyLayer < Joybox::Core::Layer

  scene
end
```

This will auto generate a scene object with the layer already set up inside it, finally the way to present is:

``` ruby
director.push_scene(MyLayer.scene)
```

For more information, see: [CCLayer Class Reference](http://www.cocos2d-iphone.org/api-ref/2.1.0/interface_c_c_layer.html)