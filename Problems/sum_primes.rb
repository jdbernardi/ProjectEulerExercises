=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

require 'Prime'

def sum_of_primes(number)

 print %Q(The sum of all primes in #{number} is: #{Prime.each(number).inject(0) { |r, e| r + e }})


end


print %Q(Please enter a number: )
number = gets.chomp
sum_of_primes(number.to_i)