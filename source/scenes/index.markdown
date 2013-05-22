---
layout: page
title: "Scenes"
comments: false
sharing: false
footer: false
---

## Any Level from Easy to Hard
### A subclass of CCScene

These objects can represent menus, levels, cutscenes or any kind of screen. Their main purpose is to encapsulate functionality (like mini apps) and as stages in the game workflow. They are composed by one or more layers, stacked one behind another.

A single level of your game will be a scene and will contain one of more layers, with each layer containing one or more sprites.

## Subclassing

In order to present the Layers on the screen you need to subclass the Scene class, which is accomplished by the following:

``` ruby
class MyScene < Joybox::Core::Scene

end
```

## Initialization

Create a new instance of a Scene:

``` ruby
scene = MyScene.new

# Present the Scene on the screen
director << scene
```

## Transitioning to a Scene

### First Scene Loaded

To load the first scene within your application:

``` ruby
scene = MenuScene.new

director.run_with_scene(scene)
```

### Transitioning from a Scene to another Scene

From within a scene you can easily transition to another scene with the following:

``` ruby
second_scene = MySecondScene.new

director << second_scene
```

## Set Up & Tear Down

A scene has two methods to assist with setup and teardown of your scene:

* `on_enter` - when the scene has already been initialized and will be presented by the director.

* `on_exit` - when the scene is going to no longer be presented by the director

``` ruby
def on_enter
  # Initialize Layers and other logic
end

def on_exit
  # Perform any state clean if needed
end
```

For more information, see: [CCScene Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_scene.html)