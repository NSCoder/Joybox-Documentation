---
layout: page
title: "Scenes"
comments: false
sharing: false
footer: false
---

## Any Level from Easy to Hard
### A subclass of CCScene

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

## Set Up & Tear Down
Its needed to use the methods on_enter and on_exit to set up and tear down the Layers (and any other related object) of the Scene:

``` ruby
def on_enter
  # Initialize the Layers
end

def on_exit
  # Perform any state clean if needed
end
```

For more information, see: [CCScene Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_scene.html)