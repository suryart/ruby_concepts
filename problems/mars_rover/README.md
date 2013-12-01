# Developer Coding Problem Statements.

## Expectation
 
1. For the solution, we would want you to use Ruby.
2. We are interested in the DESIGN ASPECT of your solution and would like to evaluate your OBJECT ORIENTED PROGRAMMING SKILLS.
3. You may use external libraries or tools for building or testing purposes.
4. Optionally, you may also include a brief explanation of your design and assumptions along with your code.
5. Kindly note that we are NOT expecting a web-based application or a comprehensive UI. Rather, we are expecting a simple, console based application and interested in your source code.
6. Along with solution please mention the steps involved to setup and run your code. Also mention the environment your code is expected to run into(versions etc).
 
## MARS ROVERS - INTRODUCTION TO THE PROBLEM
 
The problem below require some kind of input. You are free to implement any mechanism for feeding input into your solution (for example, using hard coded data within a unit test).  You should provide sufficient evidence that your solution is complete by, as a minimum, indicating that it works correctly against the supplied test data.
 
### THE PROBLEM
 
A squad of robotic rovers are to be landed by NASA on a plateau on Mars. This plateau, which is curiously rectangular, must be navigated by the rovers so that their on-board cameras can get a complete view of the surrounding terrain to send back to Earth.
 
A rover's position and location is represented by a combination of x and y co-ordinates and a letter representing one of the four cardinal compass points. The plateau is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the rover is in the bottom left corner and facing North.
 
In order to control a rover, NASA sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the rover spin 90
degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.
 
Assume that the square directly North from (x, y) is (x, y+1).
 
##### INPUT:
The first line of input is the upper-right coordinates of the plateau, the lower-left coordinates are assumed to be 0,0.
 
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.
 
The position is made up of two integers and a letter separated by spaces, corresponding to the x and y co-ordinates and the rover's orientation.
 
Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.
 
##### OUTPUT
The output for each rover should be its final co-ordinates and heading.
 
##### INPUT AND OUTPUT
 
    Test Input:
      5 5
      1 2 N
      LMLMLMLMM
      3 3 E
      MMRMMRMRRM
    Expected Output:
      1 3 N
      5 1 E

--------

## How to use mars_rover program

### System Requirements
  
    Ruby 1.8.7 or above
    rspec gem install(conditional: for running spec)

### Start: How to run the applciation?

    $ rake mars_rover:run

### Testing: How to run tests?

    $ rake mars_rover:test

