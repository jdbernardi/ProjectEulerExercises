=begin
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
=end


#PROGRAM multiples
def multiples
#starting at 1 and stopping at 1000
result = 0
for x in (1...1000) 
  if x % 3 == 0 || x % 5 == 0
    result = result + x
  end
  puts result
  
end
  
end

multiples()
#check if the number is divisible by 3 or 5
#if it is, add to an array
#otherwise toss it
#take the array and sum the numbers using inject