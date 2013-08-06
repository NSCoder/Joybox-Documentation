---
layout: documentation
title: Array
subtitle: Support Classes
categories: documentation
---

The RubyMotion class with some support methods to make conversions between the Array and the Core Graphics structures.

[note All of the Joybox's methods are allowed to receive arrays as Points, Sizes or Rects.]

### To Point
When the array contains exactly two numbers, it will return a CGPoint with the X value as the first number and the Y value as the second number:

```ruby
position = [10, 10].to_point

p "The position is: #{position.x}, #{position.y}"
```

### To Size
If the array contains exactly two numbers, it can be converted into a Size with the Width value as the first number and the Height Value as the second number:

```ruby
size = [200, 200].to_point

p "The size is: #{size.width}, #{size.height}"
```

### To Rect
The array needs exactly four numbers to do a conversion into a Rect with the first number as X, the second as Y, the third as Width and finally the fourth as Height:

```ruby
box = [0, 0, 200, 200]

p "The box is: #{box.origin.x}, #{box.origin.y}, #{box.size.width}, #{box.size.height}"
```
