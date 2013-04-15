---
layout: page
title: "Menus"
comments: false
sharing: false
footer: false
---

## Touch to Play

## Colors

You can create new colors from RGB or Hexadecimal:

``` ruby
# Color from Hexadecimal
Color.from_hex('#4AA419')

# Color from RGB
Color.from_rgb(255, 255, 255)
```

## Labels

Create a new instance of a Label:

``` ruby
label = Label.new  text: <text>, 
                   font_size: <font_size>,
                   position: <point_on_the_screen>,
                   color: <color>

# Add the label to the layer
layer << label
```

For more information, see: [CCLabelTTF Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_label_t_t_f.html)

## Menu Items

There are different types of menu items but the most used ones are labels and images, which are created the following way:

``` ruby
# Set the default font size for all the Menu Labels
MenuLabel.default_font_size = 40

# Create a new instance of Menu Label
menu_label = MenuLabel.new text: <text>, color: <color> 
                           do |menu_item|

  # The User touch the Label
end

# Create a new instance of Menu Image
menu_image = MenuImage.new image_file_name: <file_name>,
                           selected_image_file_name: <file_name>
                           do |menu_item|

  # The User touch the Image
end
```

Important: You will need a Menu to add them to the Layer.

For more information, see: [CCMenuItemLabel Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_menu_item_label.html) & [CCMenuItemImage Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_menu_item_image.html)

## Menu

Set up a new Menu on the Layer:

``` ruby
menu = Menu.new items:<menu_items>,
                position: <point_on_the_screen>

# Menu Configuration

layer << menu
```

## Configure the Menu

There are a couple of options that can be applied to a Menu:

``` ruby
# Appearance
menu.background_color = <color>

# Alignment
menu.align_items_vertically

menu.align_items_vertically_width_padding(<pading>)

menu.align_items_horizontally

menu.align_items_horizontally_with_padding(<pading>)

menu.align_items_in_columns(<number_of_columns>)

menu.align_items_in_rows(<number_of_rows>)
```

For more information, see: [CCMenu Class Reference](http://www.cocos2d-iphone.org/api-ref/2.0.0/interface_c_c_menu.html)
