# Author: Surya Tripathi 19/11/2013 2:34 AM
# Directions module manages the four cardinal compass points.
# These four points are further seperated and maintained as constants called: N, S, E, and W.
# Each point class can instruct rover to spin left or right with 90 degrees respectively.
module MarsRover
  module Directions
    def self.fetch_point(direction)
      { 'N' => N, 'E' => E, 'W' => W, 'S' => S }[direction]
    end
    
    N = 0
    E = 1
    S = 2
    W = 3

    MOVES = { 
              N => proc { |x,y| [x, y+1] },
              E => proc { |x,y| [x+1, y] },
              W => proc { |x,y| [x-1, y] },
              S => proc { |x,y| [x, y-1] }
            }
    DIRECTION = { N => 'N', E => 'E', W => 'W', S => 'S' }
  end
end