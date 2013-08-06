---
layout: documentation
title: Spawn
subtitle: Actions & Animations
categories: documentation
---

The Spawn class provides an action that runs actions simultaneously.

### With
Creates a new instance of Spawn:

```ruby
move_action = Move.by position:[12, 0]
jump_action = Jump.by position:[5, 0], height:10.0
rotate_action = Rotate.by angle:360.0

spawn_action = Spawn.with actions:[move_action, jump_action, rotate_action]

character.run_action spawn_action
```