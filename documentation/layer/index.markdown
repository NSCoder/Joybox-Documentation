---
layout: documentation
title: Layer
subtitle: Essentials
categories: documentation
---

The Layer class represents the drawing canvas for the Game, they can contain Sprites, Labels and other Layers like Menus as children. Also they receive the user interaction: like the touches on the screen on iOS or the mouse clicks on OSX.

Because of their characteristics the most of the Game logic must be placed inside a subclass of a Layer:

```ruby
class MotherShipLayer < Joybox::Core::Layer

end
```

The previous example is the correct way of subclassing a Layer, also when inherited it will include all the needed modules to create a basic game. You can include the other modules as well using the regular include method.

#### Tear Up & Tear Down
The Layer provides two methods that need to be overrided in order to do a proper Game Logic initialization and clean up:

```ruby
# Called when the Layer is presented on the screen
def on_enter

end

# Called when the Layer is dismissed from the screen
def on_exit

end
```

#### Present a Layer
In order to present a Layer on the screen its needed to be contained into a Scene, but if the Scene will be composed by only one Layer is unnecessary to create a subclass just to accomplish it. 

To make more easy to present a single Layer on the screen, it provides a method named scene, that will create an Scene for our layer automatically:

```ruby
class MotherShipLayer < Joybox::Core::Layer
	scene
end 

Joybox.director << MotherShipLayer.scene
```

[note The scene method will create a new instance of the Layer and place it inside a Scene instance.]

[more-information] For more information, see: [Scene documentation page](../scene).

[more-information] For more information, see: [Director documentation page](../director).

### New
Returns a new instance of a Layer class:

```ruby
layer = Layer.new
```

### Add Child
Adds a new child to the Layer instance:

```ruby
layer.add_child(sprite)
```

[note A lot of classes can be children of a Layer: Sprites, Labels, Menus, TileMaps, etc.] 

### <<
Push a new child into a Layer instance:

```ruby
layer << sprite
```

[note The << and add_child methods are equivalent.]

### Add Children
Adds multiple children to the Layer instance:

```ruby
children = [sprite, tile_map, menu]

layer.add_children children 
```

### Run Action
Runs an action into the Layer instance:

```ruby
layer.run_action Move.by position: [200, 200]
```

### Stop Action
Stop a Layer's running action:

```ruby
move = Move.to position: [100, 100]

layer.run_action move
layer.stop_action move
```

### Stop All Actions
Stops all actions running on the Layer's instance:

```ruby
layer.stop_all_actions
```

### Number of Running Actions
Returns the number of actions running on the Layer:

```ruby
layer.run_action Move.by position: [200, 200]

# The following is 1
layer.number_of_running_actions
```

### Running Actions?
Retrieves if the Layer is running any action:

```ruby
layer.run_action Move.by position: [200, 200]

# The following is true
layer.running_actions?
```

### Schedule Update
Starts receiving the Game Loop calls on the Layer instance:

```ruby
schedule_update do |dt|

end
```

#### Block Parameters
**dt** - Float
The delta time between Game Loop calls.

[warning Do not execute big time consuming operations on the Game Loop, it will affect drastically the performance of the game.]

### On Touches Began
Triggered when the User starts touching the screen:

```ruby
on_touches_began do |touches, event|

end
```

#### Block Parameters
**touches** - Set
Set of the touches occurring on the Event.

**event** - UIEvent
Instance of the event which touches belong.

[warning This method is only available in iOS.]

### On Touches Moved
Called when the User moves its fingers through the screen:

```ruby
on_touches_moved do |touches, event|

end
```

#### Block Parameters
**touches** - Set
Set of the touches occurring on the Event.

**event** - UIEvent
Instance of the event which touches belong.

[warning This method is only available in iOS.]

### On Touches Ended
Triggered when the User raises its fingers from the screen:

```ruby
on_touches_ended do |touches, event|

end
```

#### Block Parameters
**touches** - Set
Set of the touches occurring on the Event.

**event** - UIEvent
Instance of the event which touches belong.

[warning This method is only available in iOS.]

### On Touches Cancelled
Received when a system event cancels the touch event:

```ruby
on_touches_canceled do |touches, event|

end
```

#### Block Parameters
**touches** - Set
Set of the touches occurring on the Event.

**event** - UIEvent
Instance of the event which touches belong.

[warning This method is only available in iOS.]

### On Mouse Down
Triggered when the User has pressed a mouse button:

```ruby
on_mouse_down do |event, button|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

**button** - Symbol
The mouse button related to the event, the possible values are :left, :right, :other.

[warning This method is only available in OSX.]

### On Mouse Dragged
Received when the User drags a mouse button through the Screen:

```ruby
on_mouse_dragged do |event, button|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

**button** - Symbol
The mouse button related to the event, the possible values are :left, :right, :other.

[warning This method is only available in OSX.]

### On Mouse Up
Called when the User releases a mouse button:

```ruby
on_mouse_up do |event, button|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

**button** - Symbol
The mouse button related to the event, the possible values are :left, :right, :other.

[warning This method is only available in OSX.]

### On Mouse Moved
Received when the User moves the mouse:

```ruby
on_mouse_moved do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Mouse Entered
Triggered when the Mouse pointer enters into the Layer:

```ruby
on_mouse_entered do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Mouse Exited
Called when the Mouse pointer exits the Layer:

```ruby
on_mouse_exited do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Mouse Scroll
Received when the User scrolls into the Layer:

```ruby
on_mouse_scroll do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Key Down
Received when the User presses a keyboard key:

```ruby
on_key_down do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Key Up
Called when the User releases a keyboard key:

```ruby
on_key_up do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Key Flag Changed
Triggered when the User presses or releases a modifier key: like Shift, Command or Control:

```ruby
on_key_flag_changed do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Gesture Begin
Called when the User begins a touch gesture:

```ruby
on_gesture_begin do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Gesture Magnify
Called when the User performs a magnify gesture:

```ruby
on_gesture_magnify do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Gesture Smart Magnify
Triggered when the User performs a smart magnify gesture:

```ruby
on_gesture_smart_magnify do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Gesture Rotate
Received when the User executes a rotate gesture:

```ruby
on_gesture_rotate do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]

### On Gesture Swipe
Called when the User executes a swipe gesture:

```ruby
on_gesture_swipe do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This gesture only work when the three fingers gesture is not be mapped in the Trackpad System Preferences.]

[warning This method is only available in OSX.]

### On Gesture End
Received when the User ends a touch gesture:

```ruby
on_gesture_end do |event|

end
```

#### Block Parameters
**event** - Event
The event resulting from the user action.

[warning This method is only available in OSX.]