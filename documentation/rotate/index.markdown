---
layout: documentation
title: Rotate
subtitle: Actions & Animations
categories: documentation
---

The Rotate class provides an action that rotates a node by modifying its rotation attribute.

### By
Rotates an object modifying its rotate property by n degrees:

```ruby
# Character's rotation will be modified by 30 degrees clockwise
rotate_by_action = Rotate.by angle: 30.0
character.run_action rotate_by_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### To
Rotates an object modifying its rotation attribute to a certain angle:

```ruby
# Character's rotation will be setted to 45 degrees
rotate_to_action = Rotate.to angle: 45.0
character.run_action rotate_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.