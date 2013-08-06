---
layout: documentation
title: Ease
subtitle: Actions & Animations
categories: documentation
---

The Ease class provides an action that alters the speed of the inner action without modifying the total time of the running action.

These type of actions accelerate or decelerate in 3 ways:

* In actions: acceleration occurs at the beginning of the action.
* Out actions: acceleration occurs at the end of the action.
* InOut actions: acceleration occurs at the beginning and at the end of the action. 

### In
Creates an instance of Ease, with acceleration at the beginning, represented by a cubic function:

```ruby
rotate_by_action = Rotate.by angle: 359, duration: 3.0
ease_in_action = Ease.in action: rotate_by_action, rate: 2
character.run_action ease_in_action
```

#### Options
**rate:** - Float - Default: 1.0
Sets the rate of the Action.

### Out
Creates an instance of Ease, with acceleration at the end, represented by a cubic function:

```ruby
rotate_by_action = Rotate.by angle: 359, duration: 3.0
ease_out_action = Ease.out action: rotate_by_action, rate: 2
character.run_action ease_out_action
```

#### Options
**rate:** - Float - Default: 1.0
Sets the rate of the Action.

### In Out
Creates an instance of Ease, with acceleration at the beginning and at the end, represented by a cubic function:

```ruby
rotate_by_action = Rotate.by angle: 359, duration: 3.0
ease_in_out_action = Ease.in_out action: rotate_by_action, rate: 2
character.run_action(ease_in_out_action)
```

#### Options
**rate:** - Float - Default: 1.0
Sets the rate of the Action.

### Exponential In
Creates an instance of Ease, with acceleration at the beginning, represented by an exponential function:

```ruby
move_by_action = Move.by position: [100, 0], duration: 2.0
ease_exponential_in_action = Ease.exponential_in action: move_by_action
character.run_action(ease_exponential_in_action)
```

### Exponential Out
Creates an instance of Ease, with acceleration at the end, represented by an exponential function:

```ruby
move_by_action = Move.by position: [100, 0], duration: 2.0
ease_exponential_out_action = Ease.exponential_out action: move_by_action
character.run_action(ease_exponential_out_action)
```

### Exponential In Out
Creates an instance of Ease, with acceleration at the beginning and at the end, represented by an exponential function:

```ruby
move_by_action = Move.by position: [100, 0], duration: 2.0
ease_exponential_in_out_action = Ease.exponential_in_out action: move_by_action
character.run_action ease_exponential_in_out_action
```

### Sine In
Creates an instance of Ease, with acceleration at the beginning, represented by a sine function:

```ruby
jump_by_action = Jump.by position: [0, 100], duration: 2.0
ease_sine_in_action = Ease.sine_in action: jump_by_action
character.run_action ease_sine_in_action
```

### Sine Out
Creates an instance of Ease, with acceleration at the end, represented by a sine function:

```ruby
jump_by_action = Jump.by position: [0, 100], duration: 2.0
ease_sine_out_action = Ease.sine_out action: jump_by_action
character.run_action ease_sine_out_action
```

### Sine In Out
Creates an instance of Ease, with acceleration at the beginning and at the end, represented by a sine function:

```ruby
jump_by_action = Jump.by position: [0, 100], duration: 2.0
ease_sine_in_out_action = Ease.sine_in_out action: jump_by_action
character.run_action ease_sine_in_out_action
```

### Elastic In
Creates an instance of Ease, with acceleration at the beginning, simulating an elastic:

```ruby
scale_by_action = Scale.by scale:2.0, duration: 2.0
ease_elastic_in_action = Ease.elastic_in action: scale_by_action, period:2.0
character.run_action ease_elastic_in_action
```

#### Options
**period** - Float - Default: 1.0
Sets the period of the action.

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Elastic Out
Creates an instance of Ease, with acceleration at the end, simulating an elastic:

```ruby
scale_by_action = Scale.by scale:2.0, duration: 2.0
ease_elastic_out_action = Ease.elastic_out action: scale_by_action, period:2.0
character.run_action ease_elastic_out_action
```

#### Options
**period:** - Float - Default: 1.0
Sets the period of the Action.

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Elastic In Out
Creates an instance of Ease, with acceleration at the beginning and at the end, simulating an elastic:

```ruby
scale_by_action = Scale.by scale:2.0, duration: 2.0
ease_elastic_in_out_action = Ease.elastic_in_out action: scale_by_action, period:2.0
character.run_action ease_elastic_in_out_action
```

#### Options
**period:** - Float - Default: 1.0
Sets the period of the Action.

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Bounce In
Creates an instance of Ease, with acceleration at the beginning, simulating a bouncing effect:

```ruby
rotate_by_action = Rotate.by angle: 359.0, duration:2.0
ease_bounce_in_action = Ease.bounce_in action: rotate_by_action
character.run_action ease_bounce_in_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Bounce Out
Creates an instance of Ease, with acceleration at the end, simulating a bouncing effect:

```ruby
rotate_by_action = Rotate.by angle: 359.0, duration:2.0
ease_bounce_out_action = Ease.bounce_out action: rotate_by_action
character.run_action ease_bounce_out_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Bounce In Out
Creates an instance of Ease, with acceleration at the beginning and at the end, simulating a bouncing effect:

```ruby
rotate_by_action = Rotate.by angle: 359.0, duration:2.0
ease_bounce_in_out_action = Ease.bounce_in_out action: rotate_by_action
character.run_action ease_bounce_in_out_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Back In
Creates an instance of Ease, with acceleration at the beginning, simulating a back effect:

```ruby
move_by_action = Move.by position: [-100, 0], duration: 2.0
ease_back_in_action = Ease.back_in action: move_by_action
character.run_action ease_back_in_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Back Out
Creates an instance of Ease, with acceleration at the end, simulating a back effect:

```ruby
move_by_action = Move.by position: [-100, 0], duration: 2.0
ease_back_out_action = Ease.back_out action: move_by_action
character.run_action ease_back_out_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]

### Back In Out
Creates an instance of Ease, with acceleration at the beginning, and at the end, simulating a back effect:

```ruby
move_by_action = Move.by position: [-100, 0], duration: 2.0
ease_back_in_out_action = Ease.back_in_out action: move_by_action
character.run_action ease_back_in_out_action
```

[warning This action doesn't use a bijective function. Actions like Sequence might have an unexpected result when used with this action.]