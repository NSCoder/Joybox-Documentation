---
layout: documentation
title: Scene
subtitle: Essentials
categories: documentation
---

The Scene classes encapsulates game functionally into stages or levels, providing the required independence in the different parts of the Game: like for example the Intro screen and the Game Level 1.

The Game flow is composed by many Scenes, but only one is active at the same time. In order to control which scene is presented the Director's push and pop scene are required:

```ruby
# When the Game starts
start_game_scene = StartGameScene.new
director.push_scene start_game_scene

# After the User presses start
game_level_scene = GameLevelScene.new
director.push_scene game_level_scene

# After the User wins
win_cut_scene = WinCutScene.new
director.push_scene win_cut_scene
```

The previous example illustrates a typical Game flow, presenting first a Menu Scene, later the Game Scene and finally a Ending Scene.

#### Composition
The scenes can be composed by one or more layers, in order to accomplish this is required to subclass the Scene in the following way:

```ruby
class GameScene < Joybox::Core::Scene

end
```

It will provide two methods that will be called when the Scene is presented and dismissed:

```ruby
# Called when the Scene is presented on the screen
def on_enter

end

# Called when the Scene is dismissed from the screen
def on_exit

end
```

And finally using the on enter method, the Layers can be initialized and added to the scene:

```ruby
def on_enter
	background_layer = BackgroundLayer.new
	self.add_child background_layer

	space_ship_layer = SpaceShipLayer.new
	self.add_child space_ship_layer
end
```

[more-information] For more information about presenting Scenes, see: [Director documentation page](../director).

[more-information] For more information about Layers, visit: [Layer documentation page](../layer)

### New
Returns a new instance of a Scene class:

```ruby
scene = Scene.new
```

### Add Child
Adds a new child to the Scene instance:

```ruby
scene.add_child(layer)
```

[note The Layers are the recommended classes to be children of a Scene, but it supports also Sprites, Labels, etc.]

### <<
Push a new child into a Scene instance:

```ruby
scene << layer
```

[note The << and add_child methods are equivalent.]

### Add Children
Adds multiple children to the Layer instance:

```ruby
children = [game_layer, background_layer]

scene.add_children children 
```

### Run Action
Runs an action into the Scene instance:

```ruby
scene.run_action Blink.by times: 10
```

### Stop Action
Stop a Scenes's running action:

```ruby
blink = Blink.by times: 10

scene.run_action blink
scene.stop_action blink
```

### Stop All Actions
Stops all actions running on the Scenes's instance:

```ruby
scene.stop_all_actions
```

### Number of Running Actions
Returns the number of actions running on the Scene:

```ruby
scene.run_action Blink.by times: 10

# The following is 1
scene.number_of_running_actions
```

### Running Actions?
Retrieves if the Scene is running any action:

```ruby
scene.run_action Blink.by times: 10

# The following is true
scene.running_actions?
```

### Schedule Update
Starts receiving the Game Loop calls on the Scene instance:

```ruby
schedule_update do |dt|

end
```

#### Block Parameters
**dt** - Float
The delta time between Game Loop calls.

[warning Do not execute big time consuming operations on the Game Loop, it will affect drastically the performance of the game.]