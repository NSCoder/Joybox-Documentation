---
layout: documentation
title: Numeric
subtitle: Support Clases
categories: documentation
---

A regular Numeric Class with support to perform conversions between systems.

### Half
Returns the Number divided by two:

```ruby
# The following is 5
10.half
```

### To Pixels
Multiplies the number by thirty two:

```ruby
# The following is 320
10.to_pixels
```

### From Pixels
Divides the number by thirty two:

```ruby
# The following is 10
320.from_pixels
```

### From Radians
Converts the number from Radians to Degrees:

```ruby
# The following is 180
Math::PI.to_radians
```

### To Radians
Converts the number from Degrees to Radians:

```ruby
# The following is 3.14159202575684 or Math::PI
180.to_radians
```