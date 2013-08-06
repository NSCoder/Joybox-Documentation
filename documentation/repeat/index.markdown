---
layout: documentation
title: Repeat
subtitle: Actions & Animations
categories: documentation
---

The Repeat class provides an action that repeats another action.

### Forever
Repeats an action indefinitely:

```ruby
repeat_forever_action = Repeat.forever action:an_action
character.run_action repeat_forever_action
```

[warning This action can't be Sequence-able because it is not an IntervalAction]

### With
Repeats an action certain number of times:

```ruby
repeat_action = Repeat.with action:an_action
character.run_action repeat_action
```

#### Options
**times:** - Integer - Default: 0
Sets the number of times the action will be repeated.