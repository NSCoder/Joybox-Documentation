---
layout: documentation
title: Jump
subtitle: Actions & Animations
categories: documentation
---

The Jump class provides an action that simulates a jump modifying an object's position.

### By
Creates a Jump action that moves an object x pixels horizontally and y pixels vertically:

```ruby
# After running the Jump action, character position will be modified 10 pixels right and 15 pixels up
jump_by_action = Jump.by position: [10, 15]
character.run_action jump_by_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.
**height:** - Float - Default: 0.0
Sets the height of the jump.
**jumps:** - Integer - Default: 1
Sets the number of jumps within the Action.

### To
Creates a Jump action that moves an object to the point [x,y]:

```ruby
# After running the Jump action, character position will be [10, 15]
jump_to_action = Jump.to position: [10, 15]
character.run_action jump_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.
**height:** - Float - Default: 0.0
Sets the height of the jump.
**jumps:** - Integer - Default: 1
Sets the number of jumps within the Action.