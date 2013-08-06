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
	p "The touch location is: {touch.location}"
end
```