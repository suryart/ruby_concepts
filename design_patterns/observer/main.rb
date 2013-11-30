$:.unshift File.dirname(__FILE__)
require 'observer'
require 'switch_box'
require 'switch'
require 'appliance'

switch_box = SwitchBox.new('switch box')
switch1 = Switch.new('Switch 1', :off)

switch_box.switches << switch1

appliance = Appliance.new('Fan')
appliance.switch = switch1
switch1.add_observer(appliance)

puts "Switch named #{switch1.name} is currently #{switch1.state.to_s}"
puts "Appliance #{appliance.name} is currently #{appliance.state.to_s}"

puts 'Changing switch state!!'
switch1.state = :on
puts 'Switch state has been changed!!'

puts "Switch named #{switch1.name} is now #{switch1.state.to_s}"
puts "Appliance #{appliance.name} is now #{appliance.state.to_s}"
