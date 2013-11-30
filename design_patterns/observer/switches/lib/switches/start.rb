module Switches
  class Start

    def self.run(argf)
      switch_box = SwitchBox.new(argf.gets.chomp)
      switch1 = Switch.new(argf.gets.chomp, :off)

      switch_box.switches << switch1

      appliance = Appliance.new(argf.gets.chomp)
      appliance.switch = switch1
      switch1.add_observer(appliance)

      puts "Switch named '#{switch1.name}' is currently #{switch1.state.to_s.upcase}"
      puts "Appliance '#{appliance.name}' is currently #{appliance.state.to_s.upcase}"
      puts '-'*10
      puts 'Changing switch state!!'
      switch1.state = :on
      puts 'Switch state has been changed!!'
      puts '-'*10
      puts "Switch named '#{switch1.name}' is now #{switch1.state.to_s.upcase}"
      puts "Appliance '#{appliance.name}' is now #{appliance.state.to_s.upcase}"
    end
  end
end