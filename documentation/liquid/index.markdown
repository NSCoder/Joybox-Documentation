---
layout: documentation
title: Liquid
subtitle: Actions & Animations
categories: documentation
---

The Liquid class creates an action that provides an aqueous effect to the grid in which it is applied.

### With
Creates a Liquid instance:

```ruby
liquid_action = Liquid.with grid_size:[100, 200]
background_layer.run_action liquid_action
```

#### Options
**waves:** - Integer - Default: 1
Sets the number of waves the action will have.
**amplitude:** - Float - Default: 10.0
Sets the amplitude of the waves.
**duration:** - Float - Default: 0.3
Sets the total duration time of the action.

[warning In order to run this action, you must set projection: KCCDirectorProjection3D in the director.]