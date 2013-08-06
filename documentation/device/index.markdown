---
layout: documentation
title: Device
subtitle: Support Classes
categories: documentation
---

Provides convenient methods for retrieving information of the Device that is running the Game.

### Simulator?
Returns if the Game is running on the iOS Simulator:

```ruby
Device.simulator?
```

[note This method is only available on iOS.]

### iPhone?
Retrieves if a iPhone is running the Game:

```ruby
Device.iphone?
```

[note This method is only available on iOS.]

### iPad?
Returns if the Game is running on a iPad:

```ruby
Device.ipad?
```

[note This method is only available on iOS.]

### Retina?
Gets if the Device has a Retina Display:

```ruby
Device.retina?
```

### Scale Factor
Returns the display scale factor:

```ruby
scale_factor = Device.scale_factor

p "The device scale factor is: #{scale_factor}"
```

### Orientation 
Returns the Device orientation:

```ruby
orientation = Device.orientation

p "The device orientation is: #{orientation}"
```

[note This method is only available on iOS.]

### OS Version
Retrieves the Device operating system version:

```ruby
os_version = Device.os_version

p "The device operating system version is: #{os_version}"
```