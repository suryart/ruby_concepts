# Author: Surya Tripathi 19/11/2013 12:18 AM
# Rover class represent a rover on a plateau which has a direction and a current position as x and y co-ordinates
module MarsRover
  class Rover
    attr_reader :direction, :position, :max_position

    def initialize(initial_direction, max_position, current_position=[0,0])
       @direction = initial_direction
       @position = current_position
       @max_position = max_position
    end

    def turn_left
      if @direction == MarsRover::Directions::N
        @direction = MarsRover::Directions::W
      else
        @direction = @direction - 1
      end
    end

    def turn_right
      if @direction == MarsRover::Directions::W
        @direction = MarsRover::Directions::N
      else
        @direction = @direction + 1
      end
    end

    def move
      new_position = MarsRover::Directions::MOVES[@direction].call(@position[0].to_i, @position[1].to_i)
      if new_position[0] < 0 || new_position[0] > max_position[0]
        puts 'WARNING: x co-ordinates can not go beyond plateau'
      elsif new_position[1] < 0 || new_position[1] > max_position[1]
        puts 'WARNING: y co-ordinates can not go beyond plateau'
      else
        @position = new_position
      end
    end

    def to_s
      position.nil? ? "Error: Rover can not move further" : "#{position[0]} #{position[1]} #{ MarsRover::Directions::DIRECTION[direction]}"
    end
  end
end