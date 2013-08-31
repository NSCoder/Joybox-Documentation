---
layout: documentation
title: Touch
subtitle: Support Classes
categories: documentation
---

A regular UITouch class with a support method for returning the appropriate coordinate system.

[warning This class is only available in iOS.]

### Location
Returns the location of Touch on the screen:

```ruby
on_touches_began do |touches, event|
	touch = touches.any_object
	p "Touch began at: #{touch.location.x}, #{touch.location.y}"
end

on_touches_moved do |touches, event|
	touch = touches.any_object
	p "Touch moved to: #{touch.location.x}, #{touch.location.y}"
end

on_touches_ended do |touches, event|
	touch = touches.any_object
	p "Touch ended at: #{touch.location.x}, #{touch.location.y}"
end
```