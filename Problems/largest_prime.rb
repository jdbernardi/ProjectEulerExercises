=begin
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
=end

require 'Prime'

#PROGRAM largest_prime(number)
def largest_prime(num)
number = num.to_i
prime_factor = []

Prime.each(number) { |prime| prime_factor << prime unless number % prime != 0 }

print prime_factor.max

end


puts "Please enter the number"
num = gets.chomp

largest_prime(num)


