---
layout: documentation
title: AABB
subtitle: Physics Environment
categories: documentation
---

The class AABB (Axis Aligned Bounding Box) represents a box aligned to the world axis. Generally the size of the box is the minimum bounds in which an object (either a Shape or a Fixture) can fit.

One important thing to note is that even if the object rotates, the AABB will always be aligned to the world axis. In other words it can't rotate.

[more-information]For more information, see: [Minimum bounding box](http://en.wikipedia.org/wiki/Minimum_bounding_box)

[more-information]For more information, see: [When Two Hearts Collide: Axis-Aligned Bounding Boxes](http://www.gamasutra.com/view/feature/131833/when_two_hearts_collide_.php)

### Lower Bound
Returns a Point containing the lower bound of the AABB in Pixel coordinates:

```ruby
aabb = fixture.aabb child_index: 0
aabb.lower_bound

p "The fixture aabb lower_bound is: #{aabb.lower_bound.x}, #{aabb.lower_bound.y}"
```

### Metric Lower Bound
Returns the lower bound point of the AABB in Metric coordinates.

### Upper Bound
Returns the upper bound Point of the AABB in Pixel coordinates:

```ruby
aabb = shape.compute_aabb position: [10, 10], angle: 0, child_index: 0
aabb.upper_bound

p "The fixture aabb upper_bound is: #{aabb.upper_bound.x}, #{aabb.upper_bound.y}"
```

### Metric Upper Bound
The upper bound Point of the AABB in Metric coordinates.