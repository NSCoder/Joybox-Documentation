---
layout: page
title: ""
comments: false
sharing: false
footer: false
---

## Video games are the passion, Ruby the language & Ruby Motion the platform

Joybox combines the most popular and widely used 2D game engine for iOS, Cocos2D, folds in the amazing Box2D physics engine, and then wraps them up into a clean Ruby API that will make game development faster and more enjoyable for both beginners and experts alike.

## Getting started

Ruby Motion is required for using Joybox, its an amazing platform for creating iOS and OSX apps using Ruby! For install instructions: (http://www.rubymotion.com)

First install Joybox from RubyGems. Run:

```ruby
gem install joybox
```

Next, install the templates and command

```ruby
joybox install
```

Finally create a new project:

```
motion create --template=joybox-ios game

#or

motion create --template=joybox-osx game
```

# Creating Classes

In this version you can generate Sprite, Layer and Scene subclasses and specs:

```
motion joybox:generate <sprite/layer/scene> <class_name>
```

## Troubleshoot Installation
If you run into troubles running your Joybox game, please do the following in the root folder of your project:

```
gem uninstall joybox -a

gem install joybox

rm .repl_history

rake clean

rake
```


## Examples

If you are looking for some examples, see [Joybox Examples Repository](https://github.com/CurveBeryl/Joybox-Examples)

## Feedback and Help

For questions, feedback, bug reports, use the project's [Issue Tracker](https://github.com/rubymotion/Joybox/issues).

## Roadmap

Next items being added to Joybox:

* Tutorials

* More Cocos2D Actions

* Tools Support

* Test Suite

* Full support for Box2D


## Contributions

The Joybox's swarm needs help to stop the madness! If you want to contribute to this goal, please go to the [Github page](https://github.com/rubymotion/Joybox), in there you will find all the information needed to start sending pull requests :D


## 3rd Party Authors

**Cocos2D**: Ricardo Quesada, Zynga and contributors [cocos2d for iPhone](http://www.cocos2d-iphone.org)

**Box2D**: Erin Catto [Box2D | A 2D Physics Engine for Games](http://box2d.org)
