---
layout: documentation
title: Screen
subtitle: Support Classes
categories: documentation
---

The Screen Class provides convenient methods for retrieving the Device Screen Size in iOS and the Window Size on OSX. 

[note The values of the Screen class are actually the size of the Director's GLView.]

### Center
Point representing the center of the Screen

```ruby
background_sprite = Sprite.position Screen.center, file_name: 'background.png'
```

[tip Useful method for presenting background Sprites or Layers on the center of the Screen.]

### Width
The Width of the Screen:

```ruby
Screen.width
```

### Half Width
The Screen size divided by two:

```ruby
Screen.half_width
```

### Height
The Height of the Screen

```ruby
Screen.height
```

### Half Height
The Height of the Screen divided by two:

```ruby
Screen.half_height
```