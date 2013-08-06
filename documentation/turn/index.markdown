---
layout: documentation
title: Turn
subtitle: Actions & Animations
categories: documentation
---

The Turn class creates an action that provides an effect of turning off the tiles to the grid in which it is applied.

### Off
Creates a Turn instance:

```ruby
turn_off_action = Turn.off grid_size:[100, 200]
background_layer.run_action turn_off_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.