---
layout: documentation
title: Filter
subtitle: Physics Environment
categories: documentation
---

The Filter class allows to control which Fixtures should collide with each other, using its 16 bit integers we can set up different scenarios for a collision (actually just 16 different scenarios).

#### Category and Mask Bits
The category_bits property defines the type of the object, and the mask_bits set with which type objects it collides, here it is an example:

```ruby
space_ship_filter.category_bits = 0x0002
asteroids_filter.category_bits = 0x0004

space_ship_filter.mask_bits = 0x0004
asteroids_filter.mask_bits = 0x0002

# Internally the collision rule is the following
space_ship_category_bits = space_ship_filter.category_bits
space_ship_mask_bits = space_ship_filter.mask_bits

asteroids_category_bits = space_ship_filter.category_bits
asteroids_mask_bits = space_ship_filter.mask_bits

collide = (space_ship_mask_bits & asteroids_category_bits) != 0 && (space_ship_category_bits & asteroids_mask_bits) != 0
```

In the previous example the Space Ship's (category: 0x0002) cannot collide with each other, only with Asteroid's (category: 0x0004). Thats why Space Ships has as mask the Asteroid's category and the other way around. Finally you may notice that the Asteroid's can collide with each other as well.

[warning The collision Category Bits and Mask Bits must be satisfied in both fixtures.]

#### Group Index 
The other way to manage the collision filtering is using the Group Index property which is a signed integer and uses the following rules:

* If one of the two Fixtures has a Group Index of zero. => Use the Category and Mask bits rules.

* If both Group Index are non zero, but different numbers. => Use the Category and Mask bit rules.

* If both Group Index are the same and positive. => Collide.

* If the two Fixtures have the same Group Index, but negative. => Don't Collide.

[more-information] For more information, see: [iforce2d Collision filtering](http://www.iforce2d.net/b2dtut/collision-filtering)

[note For more information about how to update the Fixture's Filter, please refer to the Fixture class documentation page.]

### Category Bits
Gets or Sets the Filter's category bits:

```ruby
filter = fixture.filter_data
filter.category_bits = 0x0002

fixture.filter_data = filter
```

### Mask Bits
Retrieves or updates the mask bits of the filter instance:

```ruby
filter = fixture.filter_data
filter.mask_bits = 0x0004

fixture.filter_data = filter
```

### Group Index
Gets or Sets the Group Index on the Filter:

```ruby
filter = fixture.filter_data
filter.group_index = -1

fixture.filter_data = filter
```
