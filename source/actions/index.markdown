---
layout: page
title: "Actions"
comments: false
sharing: false
footer: false
---

## Magic Tricks

The actions modify the objects attributes like position, rotation, scale, etc. They can be instant or frame by frame during a period of time. Also they can be convined, repeated and transformed using other actions. 

The actions are applied the following way:

``` ruby
sprite.run_action <action>
```

Each of the following actions can be applied to Scenes, Layers and Sprites.

## Rotate 

### A subclass of CCRotateTo & CCRotateBy

``` ruby
action = Rotate.to duration:<seconds>, angle:<degrees>

action = Rotate.by duration:<seconds>, angle:<degrees>
```

## Move 

### A subclass of CCMoveTo & CCMoveBy

``` ruby
action = Move.to duration:<seconds>, position:<point>

action = Move.by duration:<seconds>, position:<point>
```

## Scale 

### A subclass of CCScaleTo & CCScaleBy

``` ruby
action = Scale.to duration:<seconds>, scale:<scale>

action = Scale.by duration:<seconds>, scale:<scale>
```

## Skew 

### A subclass of CCSkewTo & CCSkewBy

``` ruby
action = Skew.to duration:<seconds>, x:<x>, y:<y>

action = Skew.by duration:<seconds>, x:<x>, y:<y>
```

## Repeat

### A subclass of CCRepeat & CCRepeatForever

``` ruby
action = Repeat.forever action:<action>
```

## Sequence

### A subclass of CCSequence

``` ruby
action = Sequence.with actions:<array of actions>
```

For more information, see: [Actions](http://www.cocos2d-iphone.org/wiki/doku.php/prog_guide:actions) & [Actions: Composition](http://www.cocos2d-iphone.org/wiki/doku.php/prog_guide:actions_composition)