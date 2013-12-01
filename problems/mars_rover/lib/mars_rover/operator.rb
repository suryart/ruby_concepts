# Author: Surya Tripathi 19/11/2013 1:38 AM
# Operator class manages how a rover should move within a plateau
module MarsRover
  class Operator
    INSTRUCTION = { 'L' => :turn_left, 'R' => :turn_right, 'M' => :move }

    def initialize(rover)
      @rover = rover
    end

    def receive(command_line)
      command_line.each_char do |command|
        instruction = INSTRUCTION[command]
        unless instruction.nil?
          output = @rover.send(instruction)
          return if output.nil?
        end
      end
    end
  end
end