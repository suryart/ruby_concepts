# [Observer pattern](http://en.wikipedia.org/wiki/Observer_design_pattern)

The observer pattern is a software design pattern in which an object, called the subject, maintains a list of its dependents, called observers, and notifies them automatically of any state changes, usually by calling one of their methods. It is mainly used to implement distributed event handling systems. The Observer pattern is also a key part in the familiar Model View Controller (MVC) architectural pattern. [1] In fact the observer pattern was first implemented in Smalltalk's MVC based user interface framework.[2] The observer pattern is implemented in numerous programming libraries and systems, including almost all GUI toolkits.

## Problem statement

In a room, there are switch boxes(or at least one switch box). A switch box has many switches. Switches can turn on or off one or more than one appliance(fan, bulb, tubelight, fridge etc.). So, when a user turn(change state to) on/off of a switch then state of appliance(s) affiliated to that switch should also be changed to on/off.

## Solution

SwitchBox maintains switches on it.
Switch is on a switch box has one or many appliance to power on or off.
Appliance maintains appliance in room.

## How to run?

    $ ruby main.rb