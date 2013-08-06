---
layout: documentation
title: Callback
subtitle: Actions & Animations
categories: documentation
---

The Callback class creates an action using the provided block as a callback.

### With
Creates an instance of Callback:

```ruby
# block without arguments
callback_action = Callback.with do
	puts 'Hello from inside'
end

character.run_action(callback_action)

# block with node argument
callback_action = Callback.with do |node|
	puts "Hello from inside: #{node.class}"
end

character.run_action(callback_action)

# object and block with the object as argument
message = 'Hello from inside'
callback_action = Callback.with object:message, do |object|
	puts object
end

character.run_action(callback_action)
```

#### Options
**object:** - Object - Defaults: nil
An object that can be passed as argument to the block when it is called.