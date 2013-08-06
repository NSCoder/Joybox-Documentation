---
layout: documentation
title: Shuffle
subtitle: Actions & Animations
categories: documentation
---

The Shuffle class creates an action that provides a shuffle effect to the grid in which it is applied.

### With
Creates a Shuffle instance:

```ruby
shuffle_action = Shuffle.with grid_size:[100, 200]
background_layer.run_action shuffle_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.