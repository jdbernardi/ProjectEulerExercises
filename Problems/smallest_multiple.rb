=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end


#PROGRAM smallest_multiple
def smallest_multiple

factor = Array.new(20) { |x| x += 1 }

number = 20

number += 2 until (factor.all? { |x| number % x == 0 }) == true

 
print number

  



end

smallest_multiple()
