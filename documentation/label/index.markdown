---
layout: documentation
title: Label
subtitle: User Interface
categories: documentation
---

The Label class is responsible for rendering text on the screen.

### ::TextAlignmentLeft
### ::TextAlignmentCenter
### ::TextAlignmentRight
Constants that represent the horizontal text alignment.

### ::TextAlignmentTop
### ::TextAlignmentCenter
### ::TextAlignmentBottom
Vertical text alignment constants.

### ::LineBreakWordWrap
### ::LineBreakCharacterWrap
### ::LineBreakClip
### ::LineBreakHeadTruncation
### ::LineBreakTailTruncation
### ::LineBreakMiddleTruncation
Line break mode values.

### New
Creates a new instance of the Label class:

```ruby
label = Label.new text: 'To the infinity and beyond'
```

#### Options

**color:** - Color - Default: White
Sets the Label's text color.

**position:** - Point - Default: None
The position of the label on the screen.

**font_name:** - String - Default: 'Marker Felt'
Sets the name of the font to be used to render the text.

[note All the device's fonts are supported, either OSX or iOS.]

**font_size:** - Integer - Default: 12
The size of the font to be render.

**dimensions:** - Size - Default: The rendered text dimensions
Sets the Label's dimensions.

**alignment:** - Constant - Default: TextAlignmentCenter
Label's horizontal text alignment.

**vertical_alignment:** - Constant - Default: TextAlignmentTop
Vertical text alignment of the Label.

**line_break_mode:** - Constant - Default: LineBreakWordWrap
Sets the Label's line break mode.

### Text
Gets or Sets the Label's text:

```ruby
label.text = 'To the infinity and beyond'

p "The label text is: #{label.text}"
```

### Position
Retrieves or updates the position of the Label:

```ruby
label.position = [100, 100]

p "The label position is: #{label.position.x}, #{label.position.y}"
```

### Color
Gets or sets the Label's text color:

```ruby
label.color = '#800617'.to_color
```

### Alignment
Retrieves or updates the horizontal alignment:

```ruby
label.alignment = Label::TextAlignmentLeft

# The following is true
label.alignment == Label::TextAlignmentLeft
```

### Vertical Alignment
Gets or sets the Label's vertical alignment:

```ruby
label.vertical_alignment = Label::TextAlignmentCenter

# The following is true
label.vertical_alignment == Label::TextAlignmentCenter
```

### Font Name
Retrieves or updates the Label's font name:

```ruby
label.font_name = 'Helvetica'

p "The label font name is: #{label.font_name}"
``` 

### Font Size
Gets or sets the font size of the Label:

```ruby
label.font_size = 14

p "The label font size is: #{label.font_size}"
``` 