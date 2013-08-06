---
layout: documentation
title: Menu Label
subtitle: User Interface
categories: documentation
---

The Menu Label class represents a menu item with a label, for presenting an instance of this class on the Screen is recommended to use the Menu class.

[more-information] For more information, see: [Menu documentation page](../menu).

### New
Creates a new instance of the MenuLabel class:

```ruby
menu = MenuLabel.new text: 'Start the Game!' do |menu_item|
	# This block is called when the Menu Label is selected	
end
```

#### Options

**color:** - Color - Default: White
Sets the ManuLabel's text color.

**position:** - Point - Default: None
The position of the menu label on the screen, if not provided it will be determined by the Menu.

**font_name:** - String - Default: 'Marker Felt'
Sets the name of the font to be used to render the text.

[note All the device's fonts are supported, either OSX or iOS.]

**font_size:** - Integer - Default: 12
The size of the font to be render.

### Default Font Name
Retrieves or updates the default font name for all the Menu Label instances:

```ruby
MenuLabel.default_font_name = 'Helvetica'

# The following is Helvetica
MenuLabel.default_font_name
```

### Default Font Size
Gets or sets the default font size for all the MenuLabel instances:

```ruby
MenuLabel.default_font_size = 24

# The following is 24
MenuLabel.default_font_size
```

### Font Name
Gets or sets the font name of the MenuLabel instance:

```ruby
menu_label.font_name = 'Marker Felt'

# The following is Marker Felt
menu_label.font_name
```

### Font Size
Retrieves or updates the font size of the MenuLabel instance:

```ruby
menu_label.font_size = 14

# The following is 14
menu_label.font_size
```

### Text
Gets or sets the MenuLabel's text:

```ruby
menu_label.text = 'Mothership Scores'

p "The menu label text is: #{menu_label.text}"
```