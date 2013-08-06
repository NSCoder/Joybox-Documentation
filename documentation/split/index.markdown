---
layout: documentation
title: Split
subtitle: Actions & Animations
categories: documentation
---

The Split class creates an action that provides a split effect to the grid in which it is applied.

### With
Creates a Split action that splits the grid in columns or rows:

```ruby
# Splits the background in 10 columns
split_cols_action = Split.with columns:10
background_layer.run_action split_cols_action

# Splits the background in 10 rows
split_rows_action = Split.with rows:10
background_layer.run_action split_rows_action
```

#### Options
**duration:** - Float - Default: 0.3
Sets the total duration time of the Action.