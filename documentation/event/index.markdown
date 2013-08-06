---
layout: documentation
title: Event
subtitle: Support Classes
categories: documentation
---

A regular NSEvent class with a support method for returning the appropriate coordinate system.

[warning This class is only available in OSX.]

### Location
Returns the location of Event on the screen:

```ruby
on_mouse_down do |event, button|
	location = event.location
	p "The event location is: {location}"
end
```

### Characters
Retrieves the characters pressed in the Event:

```ruby
on_key_up do |event|
	characters = event.characters
	characters.each do |character|
		p "The character is: {character}"
	end
end
```