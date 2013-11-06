---
layout: documentation
title: Object Layer
subtitle: Tiled Maps
categories: documentation
---

The ObjectLayer class represents a single object layer of the Tiled Map (TMX). The appropriate instances of this class will be created in the TileMap class when the map file is loaded. In order to access a particular instance, see: [TileMap documentation page](../tile-map).

[warning The ObjectLayer class cannot be instantiated by itself, it is required to be created using the TileMap class.]

[warning In order to use this class is required to include Joybox::TMX.]

### New
Using the TileMap's Object Layers method we can access instance of this class using its name:

```ruby
object_layer = tile_map.object_layers[:collisions]
```

[note The object layer name is set on the TMX Map Editor.]

### Name
Gets the ObjectLayer's name:

```ruby
p "The object layer name is: #{object_layer.name}"
```

### Offset
Returns the offset of the ObjectLayer instance:

```ruby
p "The object layer offset is: #{object_layer.offset.x}, #{object_layer.offset.y}"
```

### Properties
Access the ObjectLayer's properties:

```ruby
object_layer.properties.keys do |key|
	p "The property #{key} has the value: #{object_layer[key]}"
end
```
[note The object layer properties are set on the TMX Map Editor.]

### []
Retrieves a particular object of the ObjectLayer instance:

```ruby
object = object_layer[:spawn_point]

object.keys do |key|
	p "The object's key #{key} has a value of #{object[key]}"
end
```

[note The object's and their names are set on the TMX Map Editor.]