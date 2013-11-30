## Problem statement

In a room, there are switch boxes(or at least one switch box). A switch box has many switches. Switches can turn on or off one or more than one appliance(fan, bulb, tubelight, fridge etc.). So, when a user turn(change state to) on/off of a switch then state of appliance(s) affiliated to that switch should also be changed to on/off.

## Solution

SwitchBox maintains switches on it.
Switch is on a switch box has one or many appliance to power on or off.
Appliance maintains appliance in room.

## How to run?

### System Requirements
  
    Ruby 1.8.7 or above
    rspec gem install(conditional: for running spec)

### Start: How to run the applciation?

    $ rake switches:run

### Testing: How to run tests?

    $ rake switches:test
