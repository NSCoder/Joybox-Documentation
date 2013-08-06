---
layout: documentation
title: Color
subtitle: Support Classes
categories: documentation
---

Represents a Color in RGB format and is mostly used in the UI Classes like the Menus or Labels.

[warning The Color class is different from the UIColor class used in the UIKit Framework.]

### From RGB
Creates a new color based on the Red, Green and Blue format:

```ruby
red = 176
green = 17
blue = 32
color = Color.from_rgb(red, green, blue)
```

[tip The values of the RGB are from 0 to 255]

### From Hex
Creates a new color bases on its hexadecimal representation:

```ruby
color = Color.from_hex("#b01120")
```

### To Color
If a String is in a hexadecimal representation of a color it can be converted:

```ruby
"#b01120".to_color
```