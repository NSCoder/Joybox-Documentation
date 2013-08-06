---
layout: documentation
title: Tile Map
subtitle: Tiled Maps
categories: documentation
---

The TileMap class provides all the necessary functionality to display and manipulate a TMX Map. Once the map is loaded from a single file, it will create the appropriate tile and object layers allowing to access all of its properties, tiles and objects that has been previously created using a Map Editor.

[more-information] For more information, see: [Tile Layer documentation page](../tile-layer).

[more-information] For more information, see: [Object Layer documentation page](../object-layer).

#### Displaying a Map
The TileMap is a subclass of Node allowing it to be added as a child of a Layer or Scene:

```ruby
tile_map = TileMap.new file_name: 'tile_map.tmx'
self << tile_map
```

In order to use the TileMap class is needed to include the **Joybox::TMX** module, which will also add the center_at method, allowing it to move to a particular map position even if it is larger than the bounds:

```ruby
class MapLayer < Joybox::Core::Layer
	include Joybox::TMX

	def on_enter
		tile_map = TileMap.new file_name: 'tile_map.tmx'
		self << tile_map
		
		# The following point is outside the Layer bounds
		outside_point = [1500, 1500]
		center_at(outside_point)
	end 
end
```

[tip In a nutshell this method will provide camera features to your Layer or Scene. For example: If you want the layer to follow the player's character, just center it in it's position.]

#### Retina Display
The TileMap class has internal optimizations for Retina Display devices: always managing the coordinate system as 1x, this in order to improve the game developing process removing the unnecessary recalculations if the game runs on retina display or not.

Also Joybox provides a terminal command: **motion joybox:retina** that will convert your saved map file into a retina display compatible. A retina display images of the tiles will be created as well, but only doing it by scaling and should be replaced at production time.

[warning In order to use this class is required to include Joybox::TMX.]

### ::Orthogonal
### ::Hexagonal
### ::Isometric
Constants that represent the orientations of the Tile Map.

### New
Returns an instance of the TileMap:

```ruby
tile_map = TileMap.new file_name: 'tile_map.tmx'

tile_map = TileMap.new xml: map_xml, resource_path: '/tiles'
```

### Tiles Size
Retrieves or updates the size of the map in number of tiles:

```ruby
# The layer is 32 x 32 tiles
tile_map.tiles_size = [32, 32]

# The following is [32, 32]
tile_map.tiles_size
``` 

### Orientation
Retrieves or updates the TileMap orientation:

```ruby
tile_map.orientation = TileMap::Isometric

# The following is TileLayer::Isometric
tile_map.orientation
```

### Properties
Access the TileMap's properties:

```ruby
tile_map.properties.keys do |key|
	p "The property #{key} has the value: #{tile_map.properties[key]}"
end
```

[note The tile layer properties are set on the TMX Map Editor.]

### Tile Size
Returns the size of a Tile:

```ruby
p "The size of a tile is: #{tile_map.tile_size.width}, #{tile_map.tile_size.height}"
```

[tip This method is optimized for Retina Display.]

### Size
Returns the size of the TileMap in Pixels:

```ruby
p "The size of the TileMap is: #{tile_map.size.width}, #{tile_map.size.height}"
```

[tip This method is optimized for Retina Display.]

### Coordinate for Point
Gets the tile coordinate for a Pixel coordinates point:

```ruby
# If the tile map is 32 x 32 and the tile size is 10 x 10, the following is 20 x 20
tile_map.coordinate_for_point([200, 200])
```

### Bounding Box
Gets the rectangle that contains the entire map:

```ruby
bounding_box = tile_map.bounding_box

p "The bounding box is: #{bounding_box.x}, #{bounding_box.y}, #{bounding_box.width}, #{bounding_box.height}"
```

### Contains Point?
Returns if a point is contained into the Map:

```ruby
tile_map.contains_point? [200, 200]
```

### Tile Layers
Returns a TileLayer instance by its name:

```ruby
tile_layer = tile_map.tile_layers[:collectables]

p "The tile layer is: #{tile_layer}"
```

[note The tile layer name is set on the TMX Map Editor.]

### Tile Objects
Retrieves a ObjectLayer instance using its name:

```ruby
tile_object = tile_map.object_layers[:collision]

p "The object layer is: #{tile_object}"
```

[note The object layer name is set on the TMX Map Editor.]

### Tiles
Returns a tile properties by its tile type:

```ruby
tile_type = 12

p "The tile properties are: #{tile_map.tiles[tile_type]}"
```

[note Each tile type is defined from its position in the tile set from left to right and top to bottom starting with the number one.]

### Step By
Calculates the next step by one tile given an actual position in Pixels and a new desired position:

```ruby
# If the tile map is 32 x 32 and the tile size is 10 x 10, the following is [10, 0]
tile_map.step_by([0, 0], [100, 0])
```

In the previous example the current position is [0, 0] and the desired position is [100, 0], based on this the step_by method will add only one tile into the x axis returning [10, 0].

### Object
Retrieves an object based on a query starting on the object layer name, next on the object name and finally on the property key, all separated by pawns (#):

```ruby
# The following assumes that the Map has an object layer named 'collectables', also that the layer contains an object named 'health' with a property with the key 'amount'

# The following returns the value of amount
tile_map.object('collectables##health##position')

# The following returns the object
tile_map.object('collectables##health')

# The following returns the object layer
tile_map.object('collectables')
```

[note The object layer name, object name and the property keys are set on the TMX Map Editor.]

#### Custom Keys
**position**
Using the custom key 'position' instead of using 'x' or 'y' to retrieve the object's location on the map will return a point with the retina display optimization.
