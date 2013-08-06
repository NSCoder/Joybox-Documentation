---
layout: documentation
title: Circle Shape
subtitle: Physics Environment
categories: documentation
---

A Subclass of Shape that allows the Fixture to have the geometry of a circle.

[more-information] For more information, see: [Shape documentation page](../shape)

## New
Returns a new instance of the CircleShape class:

```ruby
circle_shape = CircleShape.new radius: 60
```
-
### Vertices Count
Returns the number of vertices in the Circle Shape:

```ruby
circle_shape = CircleShape.new radius: 60

# The following is 1
circle_shape.vertices_count
```

### Support Vertex by Position
Retrieves the supporting vertex for a position:

```ruby
circle_shape = CircleShape.new radius: 60

# The following is [0, 0]
circle_shape.support_vertex_by_direction [0, 0]
```

### Support Vertex Index by Position
Returns the supporting vertex index for a position:

```ruby
circle_shape = CircleShape.new radius: 60

# The following is 0
circle_shape.support_vertex_index_by_direction [0, 0]
```

### Vertex by Index
Retrieves a Circle Shape vertex by its index:

```ruby
vertex = circle_shape.vertex_by_index 0

p "The vertex is: #{vertex.x}, #{vertex.y}"
```

