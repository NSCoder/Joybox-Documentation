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
  # Configure event-handling
end

def on_exit
  # Perform any state clean if needed
end
```

## Handling Events

[Event](https://developer.apple.com/library/mac/#documentation/Cocoa/Reference/ApplicationKit/Classes/NSEvent_Class/Reference/Reference.html) is an instance of NSEvent

### User Touches

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

### Mouse Events

```ruby
on_mouse_down do |event, button|
  puts "on_mouse_down #{event} #{button}"
end

on_mouse_dragged do |event, button|
  puts "on_mouse_dragged #{event} #{button}"
end

on_mouse_up do |event, button|
  puts "on_mouse_up #{event} #{button}"
end

on_mouse_scroll do |event, button|
  puts "on_mouse_scroll #{event} #{button}"
end
```

### Keyboard Events

```ruby
on_key_down do |event|
  puts "on_key_down #{event}"
  puts "#{event.keyCode} #{event.characters} #{event.charactersIgnoringModifiers} #{event.modifierFlags}"
end

on_key_up do |event|
  puts "on_key_up #{event}"
  puts "#{event.keyCode} #{event.characters} #{event.charactersIgnoringModifiers} #{event.modifierFlags}"
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