=begin
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
=end

require 'Prime'

def sum_of_primes

 print  Prime.each(2000000).inject(0) { |r, e| r + e }


end

sum_of_primes