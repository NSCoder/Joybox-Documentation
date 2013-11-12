---
layout: documentation
title: Fixture
subtitle: Physics Environment
categories: documentation
---

The Fixture class provides the following physics properties to the Body class: Shape, Density, Friction and Restitution. Also they contain all the necessary information to simulate or not a collision.

[warning The Fixture class cannot be instantiated by itself, it is required to be created using the Body's new_fixture method.]

### ::CircleType
### ::EdgeType
### ::PolygonType
### ::ChainType
Constants that represent the types of the fixtures according to its inner shape.

### ::new
Using the Body's new fixture method we can create a new instance of a Fixture:

```ruby
body.new_fixture do
    polygon_fixture box: [16, 16],
                              friction: 1,
                              restitution: 0.5,
                              density: 0.0,
                              is_sensor: true
end

fixture = body.fixtures[0]
```

In the previous scenario a new Fixture is created with a Polygon  shape, friction of 1.0, restitution of 0.5 and density of 0.0.

[more-information]For more information, see: [Body documentation page](body/).

### Type
Gets the Fixture type:

```ruby
fixture = body.fixtures[0]

p "The fixture type is: #{fixture.type}"
```

### Body
Gets the Fixture's body:

```ruby
body = world.new_body position: [100, 100], type: Body::Dynamic do
      polygon_fixture box: [16, 16],
                    		   density: 1.0,
                    		   friction: 1.0,
                    		   restitution: 1.0
end

fixture = body.fixtures[0]

# The following is true
fixture.body == body
```

### Shape
Returns the Shape of the Fixture:

```ruby
fixture = body.fixtures[0]

p "The fixture shape is: #{fixture.shape}"
```

### Density
Gets or Sets the Fixture's density:

```ruby
fixture.density = 0.3

p "The fixture density is: #{fixture.density}"
```

### Friction
Retrieves or updates the friction of the Fixture:

```ruby
fixture.friction = 1.0

p "The fixture friction is: #{fixture.friction}"
```

### Restitution
Gets or Sets the Fixture's restitution:

```ruby
fixture.restitution = 0.0

p "The fixture restitution is: #{fixture.restitution}"
```

### Sensor
### Sensor?
Retrieves or updates if the Fixture is a sensor:

```ruby
fixture.sensor = false

p "The fixture is a sensor: #{fixture.sensor?}"
```

### Mass Data
Retrieves the Fixture mass data:

```ruby
fixture = body.fixtures[0]

p "The fixture mass data is: #{fixture.mass_data}"
```

### Contains Point?
Determinate if the Fixture contains a point:

```ruby
body = world.new_body position: [100, 100], type: Body::Dynamic do
      polygon_fixture box: [16, 16],
                    		   density: 1.0,
                    		   friction: 1.0,
                    		   restitution: 1.0
end

fixture = body.fixtures[0]

# The following is true
fixture.contains_point? [100, 100]
```

### Refilter
Enables a collision that was previously disabled by the when collide method of the World's class:

```ruby
fixture = body.fixtures[0]

fixture.refilter
```

### AABB
Retrieves the AABB of the Fixture:

```ruby
fixture = body.fixtures[0]

aabb = fixture.aabb child_index: 0

p "The fixture AABB is: #{aabb}"
```

[note For circle, polygon or edge Fixtures the child_index is zero, in the case of the chain Fixture is from zero to the number of segments minus one.]

### Ray Cast
Casts a ray against the Fixture shape:

```ruby
fixture.ray_cast first_point: [10, 10], 
                     second_point: [20, 20], 
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
In which of the Fixture's Sub-shapes should check for a intersection.

[note For circle, polygon or edge Fixtures the child_index is zero, in the case of the chain Fixture is from zero to the number of segments minus one.]

#### Block Parameters
**hits** - Boolean 
If the ray found a intersection.

**normal** - Point
Normal of the ray at the point of intersection.

**fraction** - Float
How far the ray go to found a intersection.

[more-information]For more information, see: [iforce2d Ray casting](http://www.iforce2d.net/b2dtut/raycasting)