---
layout: documentation
title: Fade
subtitle: Actions & Animations
categories: documentation
---

The Fade class provides an action that fades an object modifying its opacity property.

### In
Creates a Fade action that fades in an object and modifies its opacity property from 0 to 255:

```ruby
fade_in_action = Fade.in
character.run_action fade_in_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### Out
Creates a Fade action that fades out an object and modifies its opacity property from 255 to 0:

```ruby
fade_out_action = Fade.out
character.run_action fade_out_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

### To
Creates a Fade action that fades an object and modifies its opacity property to a custom one:

```ruby
fade_to_action = Fade.to opacity:25
character.run_action fade_to_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.

[warning This action doesn't support "reverse"]