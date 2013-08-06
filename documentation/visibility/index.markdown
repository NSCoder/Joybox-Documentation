---
layout: documentation
title: Visibility
subtitle: Actions & Animations
categories: documentation
---

The Visibility class provides an action that changes the visibility property of an object.

### Show
Turns on the visibility of an object:

```ruby
show_action = Visibility.show
character.run_action show_action
```

### Hide
Turns off the visibility of an object:

```ruby
hide_action = Visibility.hide
character.run_action hide_action
```

### Toggle
Toggles the visibility of an object:

```ruby
toggle_visibility_action = Visibility.toggle
character.run_action toggle_visibility_action
```