=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
=end

require 'Prime'
#PROGRAM smallest_multiple
def smallest_multiple
#starting with a NUMBER
count = 1
x = 1
number = 20

while count <= 20
  while x <= 20 
    if Prime.prime?(number) == true
      x += 1
    elsif number % x == 0
      x += 1
      count += 1
    else number += 1 
    end
  end
end
#if the number is divisible by 1 and not prime
#go to the next number
#otherwise increment the number
end

smallest_multiple()
#if the number is divisible by the number go to the next
#if not go to the next number
#print the result when all conditions are met