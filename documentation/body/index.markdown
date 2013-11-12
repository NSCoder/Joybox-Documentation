---
layout: documentation
title: Body
subtitle: Physics Environment
categories: documentation
---

The Body class represents a chunk of matter in the Physics Environment, and it holds all the properties that cannot be seen or touched, like Mass, Velocity, Location or Angle. To give the body a shape and a density it is required to be complemented with one or more Fixtures. For more information, see the [Fixture documentation page](../fixture).

They are three different types of bodies:

* Static
Static bodies do not react to gravity or forces and behave as if they have infinite mass, though they can be moved manually by changing the position instance variable.

* Kinematic 
Similar to the Static Bodies, the Kinematic Bodies do not react to forces, but they move according to their velocity properties. It is common to move them by changing their velocity, but that also can be achieved through the position property.

* Dynamic
Different from the Static and Kinematic bodies, the Dynamic bodies have finite mass and react to forces. They can be moved by reacting to gravity, by applying a force, or by changing their velocity or position properties.

[note When a Body is moved, its complemented fixtures will move accordingly.]

[warning The Body class cannot be instantiated by itself, it is required to be created using the World's new body method.]

[more-information] For more information, see: [Box2D Manual](http://box2d.org/manual.pdf)

### ::Static
### ::Kinematic 
### ::Dynamic
Constants that represent the types of the bodies:

```ruby
body = @world.new_body position: [1, 1], type: Body::Dynamic
```

### New
Using the World's New Body method we can create new instance of the class Body:

```ruby
body = @world.new_body position: [100, 100] do
	# This block can be used to complement the body with different fixtures
end
```

For more information on how to add Fixtures, see the [New Fixture method](#new-fixture) 

#### Options:
**angle:** - Float - *0.0 - 360.0* - Default: 0.0
Initial angle of the Body.

**linear_velocity:** - Point - Default: [0.0, 0.0]
Body's initial linear velocity.

**angular_velocity:** - Float - Default: 0.0
Angular velocity for the new instance of the Body.

**linear_damping:** - Float - Default: 0.0
Initial linear damping of the body.

**angular_damping:** - Float - Default: 0.0
Angular damping for the new instance of the Body.

**allows_sleep:** - Boolean - Default: true
Allows the Body to fall sleep when no forces are interacting with it?

**awake:** - Boolean - Default: true
Sets if the new Body instance should react to the simulation.

**fixed_rotation:** - Boolean - Default: false
The new Body instance is allowed to rotate?

**bullet:** - Boolean - Default: false
Bullets are fast moving bodies with collision detection optimizations, please take notice that this only applies to Dynamic bodies.

[more-information] For more information, see: [Box2D Manual - Page 34](http://box2d.org/manual.pdf)

**type:** - Constant - Default: Body::Static
The type of the new Body instance.

**active:** - Boolean - Default: true
The Body will react to the simulation even if it is awake?

**gravity_scale:** - Float - Default: 1.0
Increase or Decrease the gravity applied to the new instance of the Body.

### Type
Retrieve or Update the Body type:

```ruby
body.type = Body::Dynamic

# The following is true
body.type == Body::Dynamic
```

### Position
Retrieve and Update the position of the Body:

```ruby
body.position = [100, 100]

p "The position of the Body is: #{body.position.x}, #{body.position.y}"
```

### Metric Position
Get and Set the position of the Body in Metric coordinates.

### Angle
Retrieve and Update the Body's angle:

```ruby
body.angle = 180

p "The angle of the body is: #{body.angle}"
```

### Radian Angle
Gets and Sets the Body's angle in Radians.

### Mass Data
Retrieves and Sets the Mass Data of the Body:

```ruby
mass_data = MassData.new
mass_data.mass = 2.0
mass_data.center = [0.1, 0.1]
mass_data.rotational_inertia = 1.0

body.mass_data = mass_data

# The following is 2.0
body.mass_data.mass
```

### Mass
Returns the Body's mass:

```ruby
p "The mass of the Body is: #{body.mass}"
```

### Reset Mass
Resets the mass data if it was updated previously using the Mass Data method:

```ruby
body.reset_mass
```

### Inertia
Retrieves the Body's inertia:

```ruby
p "The inertia of the Body is: #{body.inertia}"
```

### Local Center
Returns the Body local center:

```ruby
local_center = body.local_center

p "The center of the body is: #{local_center}, #{local_center}"
```

### To Local Point
Converts the point to Local coordinates:

```ruby
body = @world.new_body position:[100, 100]

# The following is [-100, -100]
body.to_local_point([0, 0])
```

### To Local Vector
Converts a vector to Local coordinates:

```ruby
body = @world.new_body position:[100, 100]

# The following is [0, 0]
body.to_local_point([0, 0])
```

### World Center
Returns the center of the Body in relation to the world:

```ruby
world_center = body.world_center

p "The center of the body is: #{world_center.x}, #{world_center.y}"
```

### To World Point
Converts the point from local coordinates to World coordinates:

```ruby
body = @world.new_body position:[100, 100]

# The following is [100, 100]
body.to_world_point([0, 0])
```

### To World Vector
Converts the vector from local coordinates to World coordinates:

```ruby
body = @world.new_body position:[100, 100]

# The following is [0, 0]
body.to_world_vector([0, 0])
```

### Linear Velocity
Gets or Sets the Body linear velocity:

```ruby
body.linear_velocity = [10, 0]

linear_velocity = body.linear_velocity

p "The body linear velocity is: #{linear_velocity.x}, #{linear_velocity.y}"
```

### Linear Velocity At
Retrieves the linear velocity of the Body at a point:

```ruby
body = @world.new_body position: [100, 100]
body.linear_velocity = [10, 10]

# The following is [10, 10]
body.linear_velocity_at local_point: [0, 0]

# The following is [10, 10]
body.linear_velocity_at world_point: [100, 100]
```

### Angular Velocity
Gets or Sets the Body angular velocity:

```ruby
body.angular_velocity = 10

angular_velocity = body.angular_velocity

p "The body angular velocity is: #{angular_velocity}"
```

### Linear Damping
Retrieves or Updates the Body linear damping:

```ruby
body.linear_damping = 10

linear_damping = body.linear_damping

p "The body linear damping is: #{linear_damping}"
```

### Angular Damping
Gets or Sets the Body angular damping:

```ruby
body.angular_damping = 25

angular_damping = body.angular_damping

p "The body angular damping is: #{angular_damping}"
```

### Gravity Scale
Gets or Sets the Body gravity scale:

```ruby
body.gravity_scale = 2

gravity_scale = body.gravity_scale

p "The body gravity scale is: #{gravity_scale}"
```

### Bullet 
### Bullet?
Gets or Sets if the Body is a bullet:

```ruby
body.bullet = true

# The following is true
body.bullet?
```

### Awake
### Awake?
Retrieves and Updates if the Body is awake:

```ruby
body.awake = false

# The following is false
body.awake?
```

### Active
### Active?
Gets & Sets if the Body is active:

```ruby
body.active = false

# The following is false
body.active?
```

### Fixed Rotation
### Fixed Rotation?
Retrieves and Updates if the Body can rotate:

```ruby
body.fixed_rotation = true

# The following is true
body.fixed_rotation?
```

### Sleeping Allowed
### Sleeping Allowed?
Gets & Sets if the Body is allowed to fall sleep:

```ruby
body.sleeping_allowed = false

# The following is false
body.sleeping_allowed?
```

### Fixtures
Returns the list of the Fixtures added to the Body:

```ruby
body.fixtures.each do |fixture|
	p "Body Fixture: #{fixture}"
end
```

### New Fixture
To add a new Fixture to the Body its required to have a Shape. The following Shapes are available:

* Edge, see: [EdgeShape documentation page](../edge-shape)

* Polygon, see: [PolygonShape documentation page](../polygon-shape)

* Circle, see: [CircleShape documentation page](../circle-shape)

* Chain, see: [ChainShape documentation page](../chain-shape)

The New Fixture method combines the creation of the Shape and the Fixture, and takes as parameters the options of both classes:

```ruby
body.new_fixture do
	edge_fixture start_point: [0, 0],
						 end_point: [100, 100],
						 friction: 1,
						 restitution: 2,
						 density: 3
						 is_sensor: true
end
```

The options **start_point:** and **end_point:** belong to the EdgeShape class and **friction:**, **restitution:**, **density:** and **is_sensor:** belongs to the Fixture class. Also as you have already notice the method invoked is *edge_fixture*, which indicates what kind of Shape we are creating. Following this the three other methods are: *polygon_fixture*, *circle_fixture*, *chain_fixture*.

Here is an example creating a Fixture with a Polygon Shape:

```ruby
body.new_fixture do
	polygon_fixture vertices: [[0, 0], [16, 0], [0, 16]],
						      friction: 1,
						      restitution: 2,
						      density: 3
						      is_sensor: true
end
```

Or using the Circle Shape options:

```ruby
body.new_fixture do
	circle_fixture radius: 60
end
```

To know which parameters are required for each shape visit its documentation page.

[tip You can create new Fixtures in the block parameter passed at the creation of a Body.]

#### Fixture Options
**friction:** - Float - Default: 0.2
Sets the friction of the Fixture.

**restitution:** - Float - Default: 0.0
Initial restitution of the Fixture.

**density:** - Float - Default: 0.0
Density the new Fixture.

**is_sensor:** - Boolean - Default: false
Sensors are Fixtures which enable knowing when Bodies are touching but not simulating the collision. 

### Destroy Fixture
Remove an Fixture composed in the Body:

```ruby
fixture = body.fixtures[0]

body.destroy_fixture fixture
```

### Apply Force
Applies a force to a Body:

```ruby
body.apply_force force: [200, 200]
```

[tip You can apply forces subtracting the end and start point of a User touch on the Screen.]

#### Options
**location:** - Point - Defaults: Body's Center
Body location where the force will be applied.

**as_impulse:** - Boolean - Defaults: true
When a force is applied as an impulse the Body's linear velocity will change immediately, otherwise the velocity will change gradually over time.

### Apply Torque
Applies a torque to a Body:

```ruby
body.apply_torque torque: 30
```

#### Options
**as_impulse:** - Boolean - Defaults: true
When a torque is applied as an impulse the Body's angular velocity will change immediately, otherwise the velocity will change gradually over time.