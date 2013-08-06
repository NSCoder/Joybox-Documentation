---
layout: documentation
title: Director
subtitle: Essentials
categories: documentation
---

Its main responsibility is to manage the game flow: presenting and dismissing Scenes. Also its to initialize the OpenGL context, setting the Pixel Format, the Buffer Depth and controlling the Game Projection.

Another of its features its to keep the Game Loop running, the Game Loop is the constant calls to our game classes needed to update the drawing on the screen and the logic of the game.

Usually the Game will start with the configuration of the Director in the AppDelegate class, and then pushing a new Scene so it can be presented on the screen.

[tip It allows to pause the entire game on a single method call, this is very useful to handle game interruptions like Phone Calls or Text Messages.]

[warning The Director cannot be initialized by itself, also only one instance can exist in the entire game lifecycle, please refer to the new method for more information.]

### New
Starts the Game default configuration and returns the instance of the Director:

```ruby
@director = Joybox::Configuration.setup
```

If you need more control in the Game configuration, you can pass another settings in the setup block:

```ruby
@director = Joybox::Configuration.setup do
	director display_stats: true
end
```

When no different option is provided, the following settings are applied in the game configuration:

```ruby
@director = Joybox::Configuration.setup do

  director  wants_full_screen_layout: true,
            display_stats: false,
            animation_interval: 1.0/60,
            projection: KCCDirectorProjection2D,
            enable_retina_display: true,
            delegate: nil,
            display_stats: true

  opengl_view bounds: UIScreen.mainScreen.bounds,
              pixel_format: KEAGLColorFormatRGB565,
              depth_format: 0,
              preserve_backbuffer: 0,
              share_group: nil,
              multi_sampling: false,
              number_of_samples: 0

  texture_2d default_alpha_pixel_format: KCCTexture2DPixelFormat_RGBA8888,
             pvr_images_have_premultiplied_alpha: true

  file_utils enable_fallback_suffixes: false,
             set_iphone_retina_display_suffix: "-hd",
             set_ipad_suffix: "-ipad",
             set_ipad_retina_display_suffix: "-ipadhd"
end
```

### Debug
The configuration also allow to enable different kind of debugging tools to help in the development/testing process:

[warning These tools are not suitable for production environments, they should be turned off before deployment.]

#### REPL
As the same as in a regular UIKit application builded with RubyMotion, it will allow to select the Sprites with the cmd key + mouse click to make them available from the console:

```ruby
@director = Joybox::Configuration.setup do
	debug repl: true
end
```

[note If the iOS application boots in landscape orientation, it's needed to rotate the iOS Simulator and return it to its original orientation.]

#### Physics
This debugging tool will look inside the Layers of the first Scene being presented by the Director for an instance of the World class, then:

* It will made it available at the terminal using Joybox::Debug::Physics.world

* Depending on which keys are passed in the configuration, it will draw the according Physics Environment elements on the screen:

**:aabb**
It will draw the minimum bounding box for each Shape added in the World.

**:center_of_mass** 
Paints the center of mass of every Body being simulated in the Physics Environment.

**:pairs** 
Draws the Physics broad-phase pairs.

**:shapes**
Paints every Shape composed into a Physics Environment Body.

```ruby
@director = Joybox::Configuration.setup do
	debug physics: [:shapes, :aabb]
end
```

[note It will only debug the first World instance that it finds in the Scene's Layers.]

### Director 
Returns the instance of the Director:

```ruby
director = Joybox.director
```

### Run with Scene
Runs the first scene of the game on the Director:

```ruby
game_scene = GameScene.new
Joybox.director.run_with_scene game_scene
```

[warning Do not call this method if the Director is already presenting a Scene.]

### Push Scene
Presents a new Scene and push it into the Scene Stack:

```ruby
game_scene = GameScene.new
Joybox.director.push_scene game_scene
```

### <<
Presents a new Scene and push it into the Scene stack:

```ruby
game_scene = GameScene.new
Joybox.director << game_scene
```

[note The << and push_scene methods are equivalent.]

### Pop Scene
Dismiss current Scene and pop its out of the Scene stack:

```ruby
Joybox.director.pop_scene
```

[warning Calling this method without more Scenes in the stack, results in a execution termination.]

### Pop to Root Scene
Dismiss all the Scenes in front of the first Scene and pop them out of the stack:

```ruby
Joybox.director.pop_to_root_scene
``` 

### Replace Scene
Replaces the current displaying Scene and replaces with a new one:

```ruby
game_scene = GameScene.new
Joybox.director.replace_scene game_scene
```

[warning Do not call this method unless you have a Scene on the stack.]

### Start Animation
Restarts the Game execution and the Game Loop, after their have been paused by the Stop Animation method:

```
Joybox.director.start_animation
```

### Stop Animation
Pauses the Game execution also the no more calls will be received on the Game Loop:

```ruby
Joybox.director.stop_animation
```

[note This method is usually used when a interruption happen, like a phone call, text message or going to background.]

### Purge Cached Data
Destroys all the cached information of the game:

```ruby
Joybox.director.purge_cached_data
```

[note This method is should be called when the application receives a memory warning notification.]

[warning The Sprite Frame cache should be purged manually if needed.]

### Set Next Delta Time Zero
Sends zero in the next update on the Game Loop delta time:

```ruby
Joybox.director.set_next_delta_time_zero true
```
