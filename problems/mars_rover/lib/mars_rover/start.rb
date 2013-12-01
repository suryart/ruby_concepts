# Author: Surya Tripathi 20/11/2013 12:18 AM
# Start class runs the rover program with the arguments passed as input file
module MarsRover
  class Start

    def self.run(arg_file)
      plateau = arg_file.gets.split.map(&:to_i)
      while !arg_file.eof
        rover_position = arg_file.gets
        position = rover_position.split[0, 2]
        direction = Directions.fetch_point(rover_position.split[2])
        rover = Rover.new(direction, plateau, position)
        Operator.new(rover).receive arg_file.gets
        puts rover
      end
      puts "="*6
    end
  end
end