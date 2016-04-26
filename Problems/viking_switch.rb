=begin
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
=end

# PROGRAM switches
def switches
# there are 100 switches total 
# all the switches should be stored in an array 
switches = Array.new(100, "OFF")
# the process will not be complete until 100 trips have been made
trip = 1
# indicates the first switch through 99 (=100 switches)

while trip <= 100 # track the number of trips
# at the start, the first trip is one
  switch = trip
#  the trip signals the light switches to hit up
# if the trip is some number
#   the array to start must be switches[number]
# then the next number must be based on the iteration of the trip
  while switch <= 100
    if switch % trip == 0
      if switches[switch - 1] == "OFF"
        switches[switch - 1] = "ON"
      else
        switches[switch - 1] = "OFF"
      end
    end
    switch += switch
  end

trip += 1

end
# if switch % trip == 0 then that switch should be hit
#  at each trip, the starting switch must be that trip number
#    then move through the switches to 100
#      if the number skips 100, the loop should break to repeat
#  
#print switches.each_with_index { |x, index| 
#  if x == "ON"
#    puts "switch #{index} is on" 
# end
switches.each_with_index { |x, index| puts "switch number: #{index} is ON" unless x == "OFF"}

end


switches