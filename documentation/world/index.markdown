---
layout: documentation
title: World
subtitle: Physics Environment
categories: documentation
---

The World class is the heart of all the physics environment because the Bodies are created, contained and destroyed inside it. It is also responsible for all the aspects of the simulation, from defining the gravity to cast a ray to find fixtures.

[more-information] For more information about the Bodies, see: [Body documentation page](../body).

[more-information] For more information about the World, see: [Box2d Manual](http://box2d.org/manual.pdf)

#### Physics Simulation
In order to simulate all the physics it is required to execute the World's step method, which will update all the bodies and joints according to the gravity, forces or collisions. The usual way to step forward into the simulation is to use the game loop as follows:

```ruby
schedule_update do |dt|
	@world.step delta: dt
end
``` 

In the previous example we are passing the delta time between the game loop calls, because the world needs to know how much time it has been passed after the last step.

[warning The bodies must not be destroyed in the middle of an step execution.]

### New
Returns a new instance of the World class:

```ruby
world = World.new
```

#### Options
**gravity** - Point - Default: 0.0
Sets the gravity for the World

**allows_sleeping:** - Boolean - Default: true
Allows the bodies to fall sleep for performance optimization.

### Bodies
Returns the list of the bodies that belong to the World's instance:

```ruby
world.bodies.each do |body|
	p "The body is: #{body}"
end
```

### Body Count
Returns the number of bodies contained in the World:

```ruby
p "The number of bodies in the world is: #{world.body_count}"
```

### Allows Sleeping
### Allows Sleeping?
Gets or sets if the Bodies are allowed to sleep:

```ruby
world.allows_sleeping = false

# The following is false
world.allows_sleeping?
```

### Contact Count
Retrieves the number of contacts happening in the World:

```ruby
p "The number of contacts in the world is: #{world.contact_count}"
```

### Tree Height
Gets the World's dynamic tree height:

```ruby
p "The dynamic tree height is: #{world.dynamic_tree_height}"
```	

### Tree Balance
Retrieves the dynamic tree balance of the World:

```ruby
p "The dynamic tree balance is: #{world.dynamic_tree_balance}"
```

### Tree Quality
Returns the World's dynamic tree quality:

```ruby
p "The dynamic tree quality is: #{world.tree_quality}"
```

### Locked?
Returns if the World is in the middle of an step execution:

```ruby
world.locked?
```

### Auto Clear Forces
### Auto Clear Forces?
Gets or sets if the World should auto clear forces after a time step:

```ruby
world.auto_clear_forces = true

# The following is true
world.auto_clear_forces?
```

### Clear Forces
Clears the forces being simulated in the World:

```ruby
world.clear_forces
```

### Step
Steps forward into the physics simulation:

```ruby
world.step delta: 0.1
```

#### Options
**velocity_interactions:** - Integer - Default: 8
Sets how strongly the world should correct the velocity in a collision resolution.

**position_interactions:** - Integer - Default: 1
Defines how many times the collision resolution should iterate for a position result.

### New Body
Creates a new instance of the Body class:

```ruby
body = world.new_body position: [100, 100]
```

Please refer to the [Body documentation page](../body) for more information about how to create new bodies.

### Destroy Body
Destroys an instance of a Body class and removes it from the simulation:

```ruby
world.destroy_body body
```

### Should Collide
Called when two fixtures are about to collide to retrieve if they should:

```ruby
world.should_collide do |first_fixture, second_fixture|
	# This method should always return a boolean
	true
end
```

#### Block Parameters
**first_fixture** - Fixture
The first fixture that is going to collide.

**second_fixture** - Fixture
The other fixture that is involved in the collision.

### On Collision
Notifies when two bodies are colliding:

```ruby
world.on_collision do |first_body, second_body, is_touching|

end
```

#### Block Parameters
**first_body** - Body
The first body that is colliding.

**second_body** - Body
The other body involved in the collision.

**is_touching** - Boolean
Returns if the fixtures of the bodies touching or just the AABBs.

### When Collide
Called when a specific physics sprite is colliding:

```ruby
world.when_collide physics_sprite do |collision_sprite, is_touching|
	
end
```

#### Block Parameterss
**collision_sprite** - PhysicsSprite
The other physics sprite involved in the collision.

**is_touching** - Boolean
Returns if the fixtures of the bodies inside the physics sprites are touching or just the AABBs.

### On Fixture Destroyed
Called when a fixture is destroyed:

```ruby
world.on_fixture_destroyed do |fixture|

end
```

#### Block Parameters
**fixture** - Fixture
The World's destroyed fixture.

### Query
Search for fixtures placed inside a lower bound and upper bound:

```ruby
world.query lower_bound: [0, 0], upper_bound: [100, 100] do |fixture|

end
```

[warning This block does not get called if a fixture is not found.]

#### Block Parameters
**fixture** - Fixture
The fixture found inside the lower bound and upper bound.

### Ray Cast
Casts a ray against the World to find a Fixture intersection:

```ruby
fixture.ray_cast first_point: [10, 10], second_point: [20, 20] do |fixture, point, normal, fraction|
	# This method should always return a float			
	0.0
end
```

[warning For each time a fixture is found this block will get called.]

[warning For efficiency the block does not return the Fixtures in any order.]

#### Options
**first_point:** - Point *Required*
The initial point of the ray.

**second_point:** - Point *Required*
The final point of the ray.

#### Return
The block should return the adjustment to the length of the ray:

* To find the closest intersection: return the fraction parameter from the block call.

* To find all the intersections: return 1.0.

* To find if it hits anything not matter if its close or not: return 0.

This common scenarios were extracted from: [iforce2d World querying](http://www.iforce2d.net/b2dtut/world-querying).

#### Block Parameters
**fixture** - Fixture 
The fixture that has been hit by the ray.

**point** - Point
The point of the ray's hit.

**normal** - Point
Normal of the ray at the point of intersection.

**fraction** - Float
How far the ray go to found a intersection.
