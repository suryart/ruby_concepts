require "spec_helper"

describe MarsRover::Directions do
  describe "#fetch_point" do
    it "returns NORTH when given N point" do
      MarsRover::Directions::fetch_point("N").should be_equal(MarsRover::Directions::N)
    end
    
    it "returns SOUTH when given S point" do
      MarsRover::Directions::fetch_point("S").should be_equal(MarsRover::Directions::S)
    end
    
    it "returns EAST when given E point" do
      MarsRover::Directions::fetch_point("E").should be_equal(MarsRover::Directions::E)
    end
    
    it "returns WEST when given W point" do
      MarsRover::Directions::fetch_point("W").should be_equal(MarsRover::Directions::W)
    end
    
    it "returns nil when given any random value" do
      MarsRover::Directions::fetch_point("").should be_nil
    end
  end
end