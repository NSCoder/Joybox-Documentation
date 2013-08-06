---
layout: documentation
title: Polygon Shape
subtitle: Physics Environment
categories: documentation
---

A Subclass of Shape that allows the Fixture to have the geometry of a polygon.

[more-information] For more information, see: [Shape documentation page](../shape)

### New
Returns a new instance of the PolygonShape class:

```ruby
polygon_shape = PolygonShape.new box: [100, 100]

polygon_shape = PolygonShape.new vertices: [[0, 0], [50, 50], [100, 100]]

polygon_shape = PolygonShape.new box: [100, 100],
															  center: [50, 50],
															  angle: 60
```

[warning The minimum number of vertices in the PolygonShape is three and the maximum is eight.]


### Vertices Count
Returns the number of vertices in the Polygon Shape:

```ruby
polygon_shape = PolygonShape.new vertices: [[0, 0], [50, 50], [100, 100]]

# The following is 3
polygon_shape.vertices_count
```

### Centroid
Gets the Polygon Shape centroid:

```ruby
centroid = polygon_shape.centroid

p "The Polygon Shape centroid is: #{centroid}"
```

### Metric Centroid
Gets the Polygon Shape centroid in Metric coordinates.

### Vertices
Retrieves the vertices that composes the Polygon Shape:

```ruby
polygon_shape.vertices.each do |vertex|
	p "The vertex is: #{vertex.x}, #{vertex.y}"
end
```
[note Each vertex returned is a instance of a Point.]

### Metric Vertices
Retrieves the vertices in Metric coordinates that composes the Polygon Shape.

### Normals
Gets the Polygon Shape's normals:

```ruby
polygon_shape.normals.each do |normal|
	p "The normal is: #{normal.x}, #{normal.y}"
end
```
[note Each normal returned is a instance of a Point.]

### Metric Normals
Gets the Polygon Shape's normals in Metric coordinates.

### Vertex by Index
Retrieves a Polygon Shape vertex by its index:

```ruby
vertex = polygon_shape.vertex_by_index 0

p "The vertex is: #{vertex.x}, #{vertex.y}"
```
