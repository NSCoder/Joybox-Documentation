---
layout: documentation
title: Scale
subtitle: Actions & Animations
categories: documentation
---

The Scale class provides an action that modifies a node's scale attribute.

### By
Scales an object by modifying its scale attribute:

```ruby
first_scale_by_action = Scale.by scale:0.5
second_scale_by_action = Scale.by scale:1.0
scale_by_sequence = Sequence.with actions:[first_scale_by_action, second_scale_by_action]

# After running the sequence, character will be 50% smaller
character.run_action scale_by_sequence
```

### To
Scales an object by setting its scale attribute:

```ruby
first_scale_to_action = Scale.to scale:0.5
second_scale_to_action = Scale.to scale: 1.0
scale_to_sequence = Sequence.with actions:[first_scale_to_action, second_scale_to_action]

# After running the sequence, character will remain the same size
character.run_action scale_to_sequence
```

[warning This action doesn't support "reverse".]

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.