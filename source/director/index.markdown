---
layout: page
title: "Director"
comments: false
sharing: false
footer: false
---

## Handle the Game
### A subclass of CCDirector

## Set Up

To set up the Director with the default configuration you implement the following:

``` ruby
class AppDelegate

  def application(application, didFinishLaunchingWithOptions: launchOptions)

    @director = Joybox::Configuration.setup

    @navigation_controller = UINavigationController.alloc.initWithRootViewController(@director)
    @navigation_controller.navigationBarHidden = true

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.setRootViewController(@navigation_controller)
    @window.makeKeyAndVisible
  end

end
```

## Configuration

In case you want to modify the Director's default configuration, you should use the following block:

``` ruby
@director = Joybox::Configuration.setup do
  
  director display_stats: true
end
```

Here is the full boilerplate for the Director:

``` ruby
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

## Handle the Interruptions
The Director can handle the interruptions, just implement the following methods:

```ruby
class AppDelegate
  def applicationWillResignActive(app)
    @director.pause if @navigation_controller.visibleViewController == @director
  end

  def applicationDidBecomeActive(app)
    @director.resume if @navigation_controller.visibleViewController == @director
  end

  def applicationDidEnterBackground(app)
    @director.stop_animation if @navigation_controller.visibleViewController == @director
  end

  def applicationWillEnterForeground(app)
    @director.start_animation if @navigation_controller.visibleViewController == @director
  end

  def applicationWillTerminate(app)
    @director.end
  end

  def applicationDidReceiveMemoryWarning(app)
    @director.purge_cached_data
  end

  def applicationSignificantTimeChange(app)
    @director.set_next_delta_time_zero(true)
  end
end
```


## Access the Director
To access the Director anywhere in your game, you can call:

``` ruby
@director = Joybox.director
```

## Game Sceneflow

In order to control the video game sceneflow, the Director can push, pop, pop to root & replace the scenes:

``` ruby
# Push Scenes
@director.push_scene(<scene>)

@director << <scene>

# Pop Scenes
@director.pop_scene

# Pop to Root Scene
@director.pop_to_root_scene

# Replace Scene
@director.replace_scene(<scene>)
```

For more information, see: [CCDirector Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_director.html)