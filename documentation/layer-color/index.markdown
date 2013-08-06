---
layout: documentation
title: Layer Color
subtitle: Essentials
categories: documentation
---

A regular Layer with support for a background color.

[more-information] For more information, see: [Layer documentation page](../layer).

### New
Creates a new instance of the LayerColor class:

```ruby
layer_color = LayerColor.new color: "#800617".to_color
```

#### Options
**color:** - Color *Required*
An instance of the Color class, which be the background color of the LayerColor.

**opacity:** - Number - *0 - 255* - Default: 255
Sets the LayerColor's opacity.

**position:** - Point
Sets the LayerColor instance position.

**width:** - Float - Default: Screen width
Width of the Layer Color instance.

**height:** - Float - Default: Screen height
Height of the Layer Color instance.

### Position
Gets or Sets the LayerColor's position:

```ruby
layer_color = LayerColor.new color: "#800617".to_color
layer_color.position = [200, 200]

p "The layer color position is: #{layer_color.position.x}, #layer_color.position.y}"
```