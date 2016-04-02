=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

require 'Prime'


def find_prime

number = 1
count = 0


while count < 10001
  number += 1
  if Prime.prime?(number) == true
    count += 1
  end
end
  puts number
  puts count


end

find_prime()

