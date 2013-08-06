---
layout: documentation
title: Twirl
subtitle: Actions & Animations
categories: documentation
---

The Twirl class creates an action that provides a twirl effect to the grid in which it is applied.

### With
Creates a Twirl instance:

```ruby
twirl_action = Twirl.with grid_size:[75, 75]
background_layer.run_action(Repeat.forever action:twirl_action)
```

#### Options
**position:** - CGPoint - Default: [Screen.half_width, Screen.half_height]
Sets the center position of the grid.
**twirls:** - Integer - Default: 1
Sets the number of twirls within the action.
**amplitude:** - Float - Default: 10.0
Sets the amplitude of the waves.
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.