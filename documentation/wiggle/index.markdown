---
layout: documentation
title: Wiggle
subtitle: Actions & Animations
categories: documentation
---

The Wiggle class provides an action that wiggles a node by creating successive rotation actions.

### With
Creates a new instance of the Wiggle class

```ruby
wiggle_action = Wiggle.with duration: 5.0
character.run_action wiggle_action
```

#### Options
**duration:** - Float - Default: 3.0
Sets the total duration time of the Action.
**count:** - Int - Default: 5
Sets the total amount of partial-rotations that will comprise the Wiggle Action.
**angle:** - Float - Default: 180
Sets the overall angle the rotations will occur.