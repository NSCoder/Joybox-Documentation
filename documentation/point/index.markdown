---
layout: documentation
title: Point
subtitle: Support Classes
categories: documentation
---

The RubyMotion's CGPoint class with some convenience methods for performing arithmetic operations required usually for collision detection and physics.

[tip When needed, an Array can be converted to a Point using the 'to_point' method. For more information see the Array documentation page.]

### ==
Evaluates to true if two points are equal using their X and Y values as reference:

```ruby
# The following is true
[2, 3].to_point == [2, 3].to_point
```

### +
Adds a number to both the X and Y values or, if the parameter is a second point, adds the X and Y values of a second point to X and Y:

```ruby
# The following is [10, 10]
[3, 3].to_point + 7

# The following is [5, 10]
[3, 3].to_point + [2, 7].to_point
``` 

### -
Subtracts a number from the both X and Y values or, if the parameter is a second point, subtracts the X and Y values of a second point from X and Y:

```ruby
# The following is [5, 5]
[10, 10].to_point - 5

# The following is [4, 1]
[5, 5].to_point - [1, 4].to_point
``` 

### *
Multiplies a number by both the X and Y values or, if the parameter is a second point, multiplies the X and Y values of a second point by X and Y:

```ruby
# The following is [25, 25]
[5, 5].to_point * 5

# The following is [5, 25]
[5, 5].to_point * [1, 5].to_point
```

### /
Divides a number by both the X and Y values or, if the parameter is a second point, divides the X and Y values of a second point by X and Y:

```ruby
# The following is [1, 1]
[4, 4].to_point / 4

# The following is [4, 4]
[4, 20].to_point / [1, 5].to_point
``` 

### Half
Returns the Point dividing X and Y by two:

```ruby
# The following is [5, 5]
[10, 10].to_point.half
```

### To OpenGL Coordinates
Converts the Point from UIKit coordinates to OpenGL coordinates:

```ruby
touch.location_in_view.to_opengl_coordinates
```

### From OpenGL Coordinates
Transforms the Point from OpenGL coordinates to UIKit coordinates:

```ruby
sprite.position.from_opengl_coordinates
```

### From Pixel Coordinates
Converts the Point from Pixel coordinates to Metric coordinates:

```ruby
sprite.position.from_pixel_coordinates
```

### To Pixel Coordinates
Converts the Point from Metric coordinates to Pixel coordinates:

```ruby
body.position.to_pixel_coordinates
```

### To Local Coordinates
Receives a Sprite, Layer or Scene as parameter and will convert the Point to the argument coordinates:

```ruby
touch.location.to_local_coordinates(layer)
```

[tip Very useful when the Layer presented is bigger than the Screen]

### From Local Coordinates
Converts the Point from the Sprite, Layer or Scene coordinates to World coordinates:

```ruby
touch.location.from_local_coordinates(layer)
``` 

[note Almost every method on Joybox will perform the accordingly coordinate conversions.]
