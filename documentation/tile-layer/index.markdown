---
layout: documentation
title: Tile Layer
subtitle: Tiled Maps
categories: documentation
---

The TileLayer class represents a single tile layer of the Tiled Map (TMX), the instance of this class will be automatically created when the TileMap class loads the map file. For access a particular instance, see: [TileMap documentation page](../tile-map).

[warning The TileLayer class cannot be instantiated by itself, is required to be created using the TileMap class.]

[warning In order to use this class is required to include Joybox::TMX.]

### ::Orthogonal
### ::Hexagonal
### ::Isometric
Constants that represent the orientations of the Tile Layer.

### New
In order to retrieve an instance of the TileLayer is needed to use the tile layers method of the TileMap class:

```ruby
tile_layer = tle_map.tile_layers[:obstacles]
``` 

[note The tile layer name is set on the TMX Map Editor.]

### Properties
Access the TileLayer's properties:

```ruby
tile_layer.properties.keys do |key|
	p "The property #{key} has the value: #{object_layer[key]}"
end
```
[note The tile layer properties are set on the TMX Map Editor.]

### Name
Gets or sets the TileLayer name:

```ruby
tile_layer.name = :stars

p "The tile layer name is: #{tile_layer.name}"
```

### Tiles Size
Retrieves or updates the size of the layer in number of tiles:

```ruby
# The layer is 32 x 32 tiles
tile_layer.tiles_size = [32, 32]

# The following is [32, 32]
tile_layer.tiles_size
``` 

### Tile Set
Gets or sets the TileLayer's tile set instance:

```ruby
tile_layer.tile_set = space_vortex_tile_set

p "The tile set is: #{tile_layer.tile_set}"
```

### Orientation
Retrieves or updates the TileLayer orientation:

```ruby
tile_layer.orientation = TileLayer::Ortogonal

# The following is TileLayer::Ortogonal
tile_layer.orientation
```

### Tile Size
Returns the size of a Tile:

```ruby
p "The size of a tile is: #{tile_layer.tile_size.width}, #{tile_layer.tile_size.height}"
```

[tip This method is optimized for Retina Display.]

### Size
Returns the size of the TileLayer in Pixels:

```ruby
p "The size of the TileLayer is: #{tile_layer.size.width}, #{tile_layer.size.height}"
```

### Coordinate for Point
Gets the tile coordinate for a Pixel coordinates point:

```ruby
# If the tile layer is 32 x 32 and the tile size is 10 x 10, the following is 20 x 20
tile_layer.coordinate_for_point([200, 200])
```

### Point for Coordinate
Retrieves the Pixel coordinate point for a tile coordinate:

```ruby
# If the tile layer is 32 x 32 and the tile size is 10 x 10, the following is 200 x 200
tile_layer.point_for_coordinate([20, 20])
```

### Sprite At
Returns the sprite for a particular point:

```ruby
sprite = tile_layer.sprite_at [200, 200]

p "The sprite is: #{sprite}"
```

### Remove Tile At
Removes the tile at a particular point:

```ruby
tile_layer.remove_tile_at [200, 200]
``` 

### Tile Type At
Returns the tile type in a particular point:

```ruby
tile_type = tile_layer.tile_type_at [200, 200]
```

[note Each tile type is defined from its position in the tile set from left to right and top to bottom starting with the number one.]

### Set Tile Type At
Sets a particular tile using its type at a Pixel coordinates point:

```ruby
tile_layer.set_tile_type_at [200, 200], nebula_tile_type
```

[tip This is the correct way of changing a tile in the TileLayer.]

### []
Returns the tile type at a particular point:

```ruby
tile_type = tile_layer[star_position]

p "The tile type is: #{tile_type}"
```

[note The [] and tile_type_at methods are equivalent.]

### []=
Sets a tile type at a particular point:

```ruby
tile_layer[collectable_position] = empty_collectable_tile_type
```

[note The []= and set_tile_type_at methods are equivalent.]