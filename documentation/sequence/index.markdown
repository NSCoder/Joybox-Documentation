---
layout: documentation
title: Sequence
subtitle: Actions & Animations
categories: documentation
---

The Sequence class provides an action that runs actions one by one successively.

### With
Creates a new instance of the Sequence class:

```ruby
move_action = Move.by position:[12, 0]
jump_action = Jump.by position:[5, 0], height:10.0
rotate_action = Rotate.by angle:360.0

sequence_action = Sequence.with actions:[move_action, jump_action, rotate_action]

character.run_action sequence_action
```