---
layout: page
title: "Physics"
comments: false
sharing: false
footer: false
---

## Apply Realism

### Collection of Box2D Clases

## Set up the World

Create and Configure a new instance of the Physics World:

``` ruby
# Basic configuration
world = World.new gravity:<point_with_gravity_direction_and_force>

# Advance configuration
world = World.new gravity:<point_with_gravity_direction_and_force>,
                  # Default: true
                  allows_sleeping: <bool>,
                  # Default: true
                  continuos_physics: <bool>
```

## Step

To step forward into the Physics Simulation, you need to implement the following into the Game Loop call:

```ruby
# Basic step
schedule_update do |dt|

  @world.step delta: dt 
end

# Advance step
schedule_update do |dt|

  @world.step delta: dt,
              # Default: 8
              velocity_interactions: <velocity_interactions>,
              # Default: 1
              position_interactions: <position_interactions>
end
```
For more information, see: [Chapter 10 World Class](http://box2d.org/manual.pdf)

## Body

Create bodies to be simulated in the Physics World:

``` ruby
body = world.new_body position:<point_on_the_screen>,
                          # Default: KStaticBodyType
                          type: <body_type>
```

The following are the available body types:

* KStaticBodyType 
The Static Bodies does not move under the simulation. Excelent for walls or static objects.

* KKinematicBodyType
A Kinematic Body is simulated according to its velocity, but it does not allow you to apply any force to it. The only way to interact with it is changing its velocity.

* KDynamicBodyType 
This type of bodies are fully simulated and forces can be applied to them. Also they can collide with any body type.   

For more information, see: [Chapter 7 Bodies](http://box2d.org/manual.pdf)

## Fixures

The Fixures are used to give the body a shape, which is done implementing the following:

``` ruby
body = world.new_body position:[0, 0] do

  # Edge Fixure: Add lines to the body shape
  edge_fixure start_point: <start_point_of_the_line>,
                end_point: <end_point_of_the_line>


  # Polygon Fixure: Add poligons to the body shape
  polygon_fixure box: <size_of_the_box>

end
```

Also the Fixures are used to give the body some of its physics properties:

```ruby
body = world.new_body position:[0, 0] do

  polygon_fixure box: [0.5, 0.5],
                      # Default: 0.2
                      friction: <friction>,
                      # Default: 0
                      restitution: <restitution>,
                      # Default: 0
                      density: <density>,
                      # Default: false
                      is_sensor: <bool>

end
```
Setting the physics properties per Fixure instead of setting them to the full object allow us to have complex fixures, for example: A cube with a one very hard size and 5 soft size that allow some bouncing.

For more information, see: [Chapter 6 Fixures](http://box2d.org/manual.pdf)

Important: Adding all the Box2D shapes to Joybox is in the roadmap, but at this version it only supports Box and Edge.

## Force & Torque

Force and Torque can be applied to bodies, here is how to do it:

``` ruby
# Apply force in the center of the Body
# The force to be applied is a vector with x, y, for example: [100, 120]
body.apply_force force:<point_of_vector_force>

# Apply force using other options
body.apply_force force:<point_of_vector_force>,
                 # Default: The center of the body
                 location:<point_where_the_force_will_be_applied>,
                 # Defines if the force should be applied gradually or
                 # instantaneously
                 # Default: true (Instantaneously)
                 as_impulse:<bool>

# Apply torque
# The torque to be applied is a number, which represent the angular movement
# to be applied
body.apply_torque torque:<torque>

# Apply torque using other options
body.apply_torque torque:<torque>,
                # Defines if the torque should be applied gradually or
                # instantaneously
                # Default: true (Instantaneously)
                as_impulse:<bool>
```

For more information, see: [Chapter 10 World Class - Forces And Impulses](http://box2d.org/manual.pdf)
  

## Collision Detection

The following is used to detect the collision detection between your bodies:

```ruby
world.when_collide <body> do | collision_body, is_touching |

  # Handle the collision between the body you are interested and
  # the colliding body (collision_body)

end
```

## Bodies & Sprites

For being of any use in the vide game the Bodies must be attached to Sprites: the body will provide its position to the Sprite so the both of them will move together. 

```ruby
physics_sprite = PhysicsSprite.new file_name: <file_name>,
                                        body: body

layer << physics_sprite
```

One of the advantages of doing this is when you apply a force to the body, the sprite will move as well presenting the User the Physics simulation on the Screen:

```ruby
physics_sprite.body.apply_force force: [100, 100]
```

Also because of the Physics World gravity, your Sprites will react as well to it:

```ruby
# Example: Simulating a Ball in a Free Fall

# Create a world with Earth's Gravity
world = World.new gravity:[0, -9.8]

# New body at the center of the Screen
body = world.new_body position:[Screen.half_width, Screen.half_height]

# Physics Sprite with the image of a Ball
sprite_body = PhysicsSprite.new file_name: 'ball.png',
                                body: body

# Add the Physics Sprite to the Body
layer << sprite_body
```

For more information, see: [Box2D Manual](http://box2d.org/manual.pdf) 

