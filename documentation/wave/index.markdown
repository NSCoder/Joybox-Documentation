---
layout: documentation
title: Wave
subtitle: Actions & Animations
categories: documentation
---

The Wave class creates an action that provides a waves effect to the matrix in which it is applied.

### With
Creates a Wave instance:

```ruby
waves_action = Wave.with grid_size:[100, 200]
background_layer.run_action waves_action
```

#### Options
**waves:** - Integer - Default: 1
Sets the number of waves the action will have.
**amplitude:** - Float - Default: 10.0
Sets the amplitude of the waves.
**horizontal:** - Boolean - Default: true
Enables the effect on the horizontal axis.
**vertical:** - Boolean - Default: true
Enables the effect on the vertical axis.
**duration:** - Float - Default: 0.3
Sets the total duration time of the action.