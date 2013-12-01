# Author: Surya Tripathi 19/11/2013 11:13 PM
# mars_rover.rb to load all required files and run the program
$:.unshift File.dirname(__FILE__)

require "mars_rover/operator"
require "mars_rover/directions"
require "mars_rover/rover"
require "mars_rover/start"

MarsRover::Start.run(ARGF) unless File.directory?(ARGV[0])
