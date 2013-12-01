require "spec_helper"

describe MarsRover::Rover do  
  context "standing at position (0, 0)" do
    context "facing NORTH" do
      let(:rover) { MarsRover::Rover.new(MarsRover::Directions::N, [2, 2]) }
    
      describe "#turn_left" do    
        it "faces WEST" do
          rover.turn_left
          rover.direction.should == MarsRover::Directions::W
        end
      end
    
      describe "#turn_right" do
        it "faces EAST" do
          rover.turn_right
          rover.direction.should == MarsRover::Directions::E
        end      
      end                 
    
      describe "#move" do
        it "stands at position (0, 1)" do
          rover.move
          rover.position.should == [0, 1]
        end
      end
    end
  
    context "facing WEST" do
      let (:rover) { MarsRover::Rover.new(MarsRover::Directions::W, [2,2]) }
   
      describe "#turn_left" do
        it "faces SOUTH" do
          rover.turn_left
          rover.direction.should == MarsRover::Directions::S
        end
      end
    
      describe "#turn_right" do  
        it "faces NORTH" do
          rover.turn_right
          rover.direction.should == MarsRover::Directions::N
        end
      end
    
      describe "#move" do   
        it "stands at position (0, 0)" do
          rover.move
          rover.position.should == [0, 0]
        end
      end
    end  
  
    context "facing SOUTH" do
      let(:rover) { MarsRover::Rover.new(MarsRover::Directions::S, [2, 2]) }
    
      describe "#turn_left" do
        it "faces EAST" do
          rover.turn_left
          rover.direction.should == MarsRover::Directions::E
        end
      end
    
      describe "#turn_right" do
        it "faces WEST" do
          rover.turn_right
          rover.direction.should == MarsRover::Directions::W
        end
      end
    
      describe "#move" do
        it "stands at position (0, 0)" do
          rover.move
          rover.position.should == [0, 0]
        end
      end
    end
  
    context "facing EAST" do
      let(:rover) { MarsRover::Rover.new(MarsRover::Directions::E, [2, 2]) }
    
      describe "#turn_left" do
        it "faces NORTH" do
          rover.turn_left
          rover.direction.should == MarsRover::Directions::N
        end
      end

      describe "#turn_right" do
        it "faces SOUTH" do
          rover.turn_right
          rover.direction.should == MarsRover::Directions::S
        end
      end
    
      describe "#move" do
        it "stands at position (1, 0)" do
          rover.move
          rover.position.should == [1, 0]
        end
      end
    end
  end
end
