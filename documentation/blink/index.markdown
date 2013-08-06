---
layout: documentation
title: Blink
subtitle: Actions & Animations
categories: documentation
---

The Blink class provides an action that blinks an object by modifying its visible attribute.

### With
Creates a new instance of the Blink class:

```ruby
blink_action = Blink.with times: 1
character.run_action blink_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.