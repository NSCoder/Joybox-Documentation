---
layout: documentation
title: Chain Shape
subtitle: Physics Environment
categories: documentation
---

A Subclass of Shape that allows the Physics Environment to simulate a free form sequence of line segments which can or can't form loops.

[more-information] For more information, see: [Shape documentation page](../shape)

[warning The Chain Shape will not collide properly if there are self-intersections.] 

### New
Returns a new instance of the ChainShape class:

```ruby
chain_shape = ChainShape.new loop: [[10, 10], [15, 15], [30, 30]]

chain_shape = ChainShape.new chain: [[10, 10], [15, 15], [30, 30]]
```

[note The difference between loop: and chain: is that the loop: option will add a final segment to close the shape.]

[warning The minimum number of vertices in the ChainShape is three and the maximum is eight.]


### Vertices Count
Returns the number of vertices in the Chain Shape:

```ruby
chain_shape = ChainShape.new loop: [[10, 10], [15, 15], [30, 30]]

# The following is 3
chain_shape.vertices_count
```

### Vertices
Retrieves the vertices that composes the Chain Shape:

```ruby
chain_shape.vertices.each do |vertex|
	p "The vertex is: #{vertex.x}, #{vertex.y}"
end
```
[note Each vertex returned is a instance of a Point.]

### Metric Vertices
Retrieves the vertices in Metric coordinates that composes the Chain Shape.

### Previous Vertex
Gets or Sets a previous vertex to a Chain Shape:

```ruby
chain_shape.previous_vertex = [-100, -100]
```

[warning This method is unavailable if the ChainShape was created using the loop: option.]

### Metric Previous Vertex
Gets or Sets a previous vertex in Metric Coordinates to a Chain Shape.

### Has Previous Vertex?
Returns if the Chain Shape has a previous vertex:

```ruby
chain_shape.previous_vertex = [-100, -100]

# The following is true
chain_shape.previous_vertex?
```

### Next Vertex
Retrieves or Updates a next vertex to a Chain Shape:

```ruby
chain_shape.next_vertex = [50, 50]
```

[warning This method is unavailable if the ChainShape was created using the loop: option.]

### Metric Next Vertex
Retrieves or Updates a next vertex in Metric Coordinates to a Chain Shape.

### Has Next Vertex?
Returns if the Chain Shape has a next vertex:

```ruby
chain_shape.next_vertex = [50, 50]

# The following is true
chain_shape.next_vertex?
```

### Edge Shape by Index
Converts a vertex into a Edge Shape using its index:

```ruby
edge_shape = chain_shape.edge_shape_by_index(0)

p "The edge shape is: #{edge_shape}"
```