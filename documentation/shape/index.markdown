---
layout: documentation
title: Shape
subtitle: Physics Environment
categories: documentation
---

The Shape class provides the Fixture a geometry but also allow to perform some operations like ray casting, AABB or Mass computing or overlapping point tests.

This class cannot be initialized directly and must be used through any of the following subclasses: Chain, Circle, Edge or Polygon Shape.

[more-information]For more information, see: [Chain Shape documentation page](../chain-shape).

[more-information]For more information, see: [Circle Shape documentation page](../circle-shape).

[more-information]For more information, see: [Edge Shape documentation page](../edge-shape).

[more-information]For more information, see: [Polygon Shape documentation page](../polygon-shape).

### ::CircleType
### ::EdgeType
### ::PolygonType
### ::ChainType
Constants that represent the Shape types.

### Type
Gets the Shape type:

```ruby
p "The shape type is: #{shape.type}"
```

### Child Count
Returns the number of sub-shapes contained into the Shape instance:

```ruby
child_count = shape.child_count

p "The child count is: #{child_count}"
``` 

### Radius
Retrieves the radius of the Shape's instance:

```ruby
p "The shape radius is: #{shape.radius}"
```

### Metric Radius
Retrieves the radius in Metric coordinates of the Shape's instance.

### Contains Point?
Returns if a point is contained into a Shape:

```ruby
shape.contains_point? [100, 100]
```

### Ray Cast
Casts a ray against the Shape instance:

```ruby
shape.ray_cast first_point:[10, 10], 
         			 	 second_point:[20, 20], 
         			 	 maximum_fraction: 2, 
         			 	 child_index: 0 do |hits, normal, fraction|

         			 	 end
```

#### Options
**first_point:** - Point *Required*
The initial point of the ray.

**second_point:** - Point *Required*
The final point of the ray.

**maximum_fraction:** - Float *Required*
How far the ray should go to check for a intersection. 

The total distance will be a product of the maximum fraction and the distance between the first and second point, in other words: if the double of distance between the first and second point needed to be checked, the maximum fraction should be two.

**child_index:** - Integer *Required*
In which of the Shape's Sub-shapes should check for a intersection.

[note For Circle, Polygon or Edge Shapes the child_index is zero, in the case of the Chain Shape is from zero to the number of segments minus one.]

### Compute AABB
Computes the Shape's AABB:

```ruby
aabb = shape.compute_aabb child_index: 0

p "The shape's AABB is: #{aabb}"
```

[note For Circle, Polygon or Edge Shapes the child_index is zero, in the case of the Chain Shape is from zero to the number of segments minus one.]


### Compute Mass
Computes the mass of the Shape based on a density:

```ruby
mass = shape.compute_mass density: 1
```

[note The density should be in kilograms per meter squared.]