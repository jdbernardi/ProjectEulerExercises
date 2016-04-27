=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

require 'Prime'

#PROGRAM largest_prime(number)
def largest_prime(num)

# we take the number subtract 1 and make that the number we check for Prime
number = num.to_i
prime_number_check = (number / 30)
x = 0 
# if the number is prime 



while x == 0
if Prime.prime?(prime_number_check) == true
  #  then we check if it is divisible by the num
  if number % prime_number_check == 0
  #  that would make it the first number we print as the solution
    print prime_number_check
    x = 1
  end
end
prime_number_check -= 1
puts prime_number_check
end


#    break after done?
#  if its not divisible, we need to decrease the number and check for prime again


end






puts "Please enter the number"
num = gets.chomp

largest_prime(num)


