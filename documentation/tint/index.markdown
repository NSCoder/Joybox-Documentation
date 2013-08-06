---
layout: documentation
title: Tint
subtitle: Actions & Animations
categories: documentation
---

The Tint class provides an action that modifies an object's color.

### By
Creates an action that tints an object by combining its current color with the one that is passed as an argument:

```ruby
tint_by_action = Tint.by color: Color.from_hex('5269d6')
character.run_action tint_by_action
```

### To
Creates an action that tints an object to the color that is provided as an argument:

```ruby
tint_to_action = Tint.to color: Color.from_hex('5269d6')
character.run_action tint_to_action
```

[warning This action doesn't support "reverse".]

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.