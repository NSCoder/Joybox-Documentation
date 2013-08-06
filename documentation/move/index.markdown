---
layout: documentation
title: Move
subtitle: Actions & Animations
categories: documentation
---

The Move class provides an action that modifies the target position attribute.

### By
Moves an object x pixels horizontally and y pixels vertically:

```ruby
# Character position will be modified 10 pixels right and 25 pixels up
move_by_action = Move.by position: [10, 25]
character.run_action move_by_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### To
Moves an object to the point [x,y]:

```ruby
# Character position will be [10, 25]
move_to_action = Move.to position: [10, 25]
character.run_action move_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.