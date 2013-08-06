---
layout: documentation
title: Skew
subtitle: Actions & Animations
categories: documentation
---

The Skew class provides an action that skews an object by given angles, modifying its skewX and skewY attributes.

### By
Skews an object by x and y degrees:

```ruby
# Character skewX will be modified by 5.0 degrees and skewY will be modified by 10.0 degrees
skew_by_action = Skew.by x: 5.0, y: 10.0
character.run_action skew_by_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### To
Skews an object to x and y degrees:

```ruby
# Character properties skewX and skewY will be set to 5.0 degrees and 10.0 degrees respectively
skew_to_action = Skew.to x: 5.0, y: 10.0
character.run_action skew_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.