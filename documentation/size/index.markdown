---
layout: documentation
title: Size
subtitle: Support Classes
categories: documentation
---

Includes some methods to the RubyMotion's CGSize class to improve the arithmetic operations performed usually on the Layers and Sprites.

[tip When needed an Array can be converted to a Size, using the 'to_size' method. For more information see the Array documentation page.]

### Half
Returns the Size divided by two:

```
# The following is [150, 100]
[300, 200].to_size.half
```

### Half Width
Returns the Size width divided by two:

```ruby
# The following is 150
[300, 200].to_size.half_width
```

### Double Width
Returns the Size width multiplied by two:

```ruby
# The following is 200
[100, 300].to_size.double_width
``` 

### Half Height
Divides the Size height by two:

```ruby
# The following is 100
[300, 200].to_size.half_height
```

### Double Height
Multiplies the Size height by two:

```ruby
# The following is 600
[100, 300].to_size.double_height
```

### From Pixel Coordinates
Converts the Size from Pixel coordinates to Metric coordinates:

```ruby
sprite.bounding_box.from_pixel_coordinates
```

### To Pixel Coordinates
Converts the Size from Metric coordinates to Pixel coordinates:

```ruby
sprite.bounding_box.to_pixel_coordinates
```


