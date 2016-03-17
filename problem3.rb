=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?

a number is prime if it divisible by itself a 1
this means it only as 2 factors

get a number from the user
store that number and send to method

PROGRAM highest_prime_factors (number)
  
  while i is less than number
    check if the number divided by i is 0
      if it is, check if that factor is prime
        for i in 1..factor
          if its modulus is 0
            add count
          end
        end
        if count > 2 number is prime
          add to the array
        end
      number isn't zero then go the next number
  end 

  take the array and sort or find the highest number
  that is the largest prime factor


=end

require 'Prime'

puts "Enter a number"
input = gets.chomp
i = 1
prime_array = Array.new

while i <= input.to_i
  
  #starting at 1 we go though each number till we hit the input value
  #we need to first check if the input divided by i == 0
  if input.to_i % i == 0
  #if it is 0 then we run the prime test
    if Prime.prime?(i) == true
  #if the return on the prime test is true
  #then we can add this number to the array to test later
      prime_array << i

    end
  end
  i += 1
end


  #once we're done with the tests we can find the max prime in the array and show the user
  print prime_array
  puts prime_array.max 






