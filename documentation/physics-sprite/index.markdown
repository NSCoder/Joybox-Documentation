---
layout: documentation
title: Physics Sprite
subtitle: Physics Environment
categories: documentation
---

The Physics Sprite class is the link between the Physics Environment and the Game Logic: being a subclass of Sprite and containing a physics Body, it combines the functionality of both.

Basically it will update the position and rotation properties on both objects, so when for example the body receives a force the sprite will move as well. On the other side when the Sprite position is changed also the Body's.

Also it participates in the physics collision detection being passed as argument in the World's On Collide method and received as parameter in the method's block.

[more-information] For more information, see: [Sprite documentation page](../sprite).
[more-information] For more information, see: [Body documentation page](../body).
[more-information] For more information, see: [World documentation page](../world).

[warning Running actions on the Physics Sprite is supported but experimental.]

### New
Creates a new instance of the PhysicsSprite:

```ruby
physics_sprite = PhysicsSprite.new file_name: 'space_ship.png', body: physics_body
```

[note The Physics Sprite supports all the possible initializations of the Sprite class and adds 'body:' as an additional option for passing the physics Body.]

[tip It supports the custom options documented in the Sprite New method, which are very useful at collision detection time.]

[more-information] For more information, see: [Sprite documentation page](../sprite).

### Body
Gets or Sets the PhysicsSprite's body:

```
physics_sprite.body = body

# The following is true
physics_sprite.body == body
```