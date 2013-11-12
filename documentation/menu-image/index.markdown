---
layout: documentation
title: Menu Image
subtitle: User Interface
categories: documentation
---

The Menu Image class represents a menu item with an image as background. To present an instance of this class on the Screen is recommended to use the Menu class.

[more-information] For more information, see: [Menu documentation page](../menu).

[note Internally the Menu Image class renders its image as a Sprite.]

### New 
Returns a new instance of the MenuImage class:

```ruby
menu_image = MenuImage.new image_file_name: 'start_game.png',
													 selected_image_file_name: 'start_game_selected.png',
													 disabled_image_file_name: 'start_game_disabled.png' do |menu_item|
	# This block is called when the Menu Item is selected
end
```

#### Options
**position:** - Point
Sets the position of the MenuImage, if not provided it will be determined by the Menu.

### Sprite
Gets the Sprite assigned to the MenuImage normal state:

```ruby
menu_item.sprite
```

### Selected Sprite
Retrieves the Sprite assigned to the MenuImage selected state:

```ruby
menu_item.selected_sprite
```

### Disabled Sprite
Gets the MenuImage's disable sprite:

```ruby
menu_item.disabled_sprite
```

### Content Size
Retrieves the content size of the MenuImage instance:

```ruby
p "The content size is: #{menu_item.content_size.width}, #{menu_item.content_size.height}" 
```
