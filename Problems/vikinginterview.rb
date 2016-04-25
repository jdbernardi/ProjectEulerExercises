=begin
#################################################
## Instructions
#################################################

I'm going to paste a problem below and your job is to use code to figure it out.  We’re not actually going to run any of the code, just step through it.  It’s best if you talk through your strategy for solving the problem so I can help debug you before you go down the wrong path.  This is meant to be collaborative.

Remember:

1. The logic of your solution is more important than the syntax, so please talk it through while you're solving it.  

2. Please don't use any other resources like Google but feel free to ask me if you can't remember something like what a particular method is called. Again, it's the logic that matters not whether you've memorized a whole language yet.

3. Don’t worry about optimizing the solution or making it pretty.  Just get it done :)

Good luck!







#################################################
## Reverse
#################################################

Write a function `reverse` which takes an array as an argument and which returns that array with the order of items reversed.  Do not use existing high-level functions which accomplish the exact same thing (e.g. Ruby's `reverse` method).

For example:
=end
#PROGRAM reverse





=begin
#################################################
## Light Switches 
#################################################

You are in a room with 100 light switches in a line along the wall.  
They all start in the OFF position.  

When you first enter the room, you walk down the line of all 100 switches 
and change each one to the ON position.  

Then you start from the beginning again, this time changing 
the position of every second switch (e.g. #2, #4, #6...).  
If it was ON, now it is OFF and if it was OFF, now it is ON.

Then you start from the beginning again and change every THIRD switch (e.g. #3, #6, #9…)...
...then again for every FOURTH switch (e.g. #4, #8, #12…) ...
...then again for every FIFTH switch...
...and so on until you've made 100 trips.

Write a script that identifies which switches will be in the ON position after this is completed.

**** Code below here ****

#PROGRAM switches
# 100 switches all in OFF
array = Array.new(100, 0)

# 1 turn all ON
pass = 1
index = 0 
count = 1
#  switch ON/OFF


