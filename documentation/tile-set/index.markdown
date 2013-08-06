---
layout: documentation
title: Tile Set
subtitle: Tiled Maps
categories: documentation
---

This class represents the tile set using on the TileLayer class, exposing access to important information such as tile types, rect of a particular tile type, which image file is being used or the image size, among others.

For more information, see: [TileLayer documentation page](../tile-layer).

[warning The TileSet class cannot be instantiated by itself, it is required to be retrieved using the TileLayer class.]

[warning In order to use this class is required to include Joybox::TMX.]

### New
Using the TileLayer's tile set method we can access instance of this class:

```ruby
tile_layer.tile_set
```

[note Each TileLayer instance can have a different tile set.]

### First Tile Type
Gets or sets the first tile type in the TileSet:

```ruby
tile_set.first_tile_type = 12

# The following is 12
tile_set.first_tile_type
```

### Image File Name
Retrieves or updates the TileSet's image name:

```ruby
tile_set.image_file_name = 'space_tile_set.png'

p "The image file name is: #{tile_set.image_file_name}"
```

### Image Size
Gets or sets the TileSet's image size:

```ruby
tile_set.image_size = [1024, 768]

# The following is [1024, 768]
tile_set.image_size
```

### Tile Offset
Retrieves or updates the tile offset:

```ruby
tile_set.tile_offset = [1, 1]

# The following is [1, 1]
tile_set.tile_offset
```

### Spacing
Gets or sets the spacing between tiles:

```ruby
tile_set.spacing = 2

p "The spacing is: #{tile_set.spacing}"
```

### Margin
Retrieves or updates the margin of the TileSet's tiles:

```ruby
tile_set.margin = 1

p "The margin is: #{tile_set.margin}"
```

### Anchor Point
Returns the anchor point of the TileSet:

```ruby
p "The anchor point is: #{tile_set.anchor_point}"
```

### Rect for Tile Type
Retrieves the rect for a particular tile type in the TileSet:

```ruby
tile_type = 12

tile_set.rect_for_tile_type(tile_type)
```

### Tile Size
Returns the size of a Tile:

```ruby
p "The size of a tile is: #{tile_set.tile_size.width}, #{tile_set.tile_size.height}"
```

[tip This method is optimized for Retina Display.]