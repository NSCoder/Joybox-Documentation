---
layout: documentation
title: Edge Shape
subtitle: Physics Environment
categories: documentation
---

A Subclass of Shape that allows the Physics Environment to simulate a single line shapes.

[more-information] For more information, see: [Shape documentation page](../shape)

[tip This Shapes are commonly used for simulating walls.]

### New
Returns a new instance of the EdgeShape class:

```ruby
edge_shape = EdgeShape.new start_point: [10, 10], end_point: [20, 20]
```

### Start Point
Retrieves the start point of the EdgeShape:

```ruby
start_point = edge_shape.start_point

p "The edge shape start point is: #{start_point.x}, #{start_point.y}"
```

### Metric Start Point
Retrieves the start point in Metric Coordinates of the EdgeShape.

### End Point
Gets the Edge Shape's end point:

```ruby
end_point = edge_shape.end_point

p "The edge shape end point is: #{end_point.x}, #{end_point.y}"
```

### Metric End Point
Gets the Edge Shape's end point in Metric Coordinates.

### Has Start Adjacent Point?
Returns if the Edge Shape has a start adjacent point:

```ruby
edge_shape.has_start_adjacent_point?
```

### Start Adjacent Point
Retrieves the Edge Shape's start adjacent point:

```ruby
start_adjacent_point = edge_shape.start_adjacent_point

p "The start adjacent point is: #{start_adjacent_point.x}, #{start_adjacent_point.y}"
```

### Metric Start Adjacent Point
Gets the Edge Shape's start adjacent point in Metric Coordinates.

### Has End Adjacent Point?
Returns if the Edge Shape has a end adjacent point:

```ruby
edge_shape.has_end_adjacent_point?
```

### End Adjacent Point
Gets the end adjacent point of the EdgeShape:

```ruby
end_adjacent_point = edge_shape.end_adjacent_point

p "The end adjacent point is: #{end_adjacent_point.x}, #{end_adjacent_point.y}"
```

### Metric End Adjacent Point
Retrieves the end adjacent point of the EdgeShape in Metric Coordinates.