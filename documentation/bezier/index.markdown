---
layout: documentation
title: Bezier
subtitle: Actions & Animations
categories: documentation
---

The Bezier class provides an action that moves the target with a cubic Bezier curve.

### By
Moves the target with a cubic Bezier curve by a certain distance:

```ruby
# Character position will change 10 pixels to the right and 10 pixels up
bezier_by_action = Bezier.by bezier: [[10, 10], [20, 50], [30, 10]]
character.run_action bezier_by_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### To
Moves the target with a cubic Bezier curve to a destination point:

```ruby
# Character position will change to point [10, 10]
bezier_to_action = Bezier.to bezier: [[10, 10], [20, 50], [30, 10]]
character.run_action bezier_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.