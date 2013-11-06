---
layout: documentation
title: Menu
subtitle: User Interface
categories: documentation
---

The Menu class is responsible for building grids of MenuLabel and MenuImage items.

[more-information] For more information about MenuLabel, see: [Menu Label Documentation page](../menu-label).

[more-information] For more information about MenuImage, see: [Menu Image Documentation page](../menu-image). 

### New
Creates a new instance of the Menu class:

```ruby
items = Array.new
items << MenuLabel.new text: 'Space Ship'
items << MenuLabel.new text: 'Asteroid'

menu = Menu.new position: [100, 100], items: items
```

### Align Items Vertically
Adjusts the menu items vertically:

```ruby
menu.align_items_vertically
``` 

### Align Items Vertically with Padding
Aligns the menu items vertically with padding:

```ruby
menu.align_items_vertically_with_padding 100
```

### Align Items Horizontally
Adjusts the menu items horizontally:

```ruby
menu.align_items_horizontally
```

### Align Items Horizontally with Padding
Arranges the menu items horizontally with padding:

```ruby
menu.align_items_horizontally_with_padding 100
```

### Align Items in Columns
Aligns the menu items in columns:

```ruby
menu.align_items_in_columns [2, 1]
```

The previous example arranges two items in the first column and one in the second column.

### Align Items in Rows
Arranges the menu items in rows:

```ruby
menu.align_items_in_rows [1, 2]
```

The previous example aligns one item in the first row and two in the second.