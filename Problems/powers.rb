=begin
The series, 11 + 22 + 33 + ... + 1010 = 10405071317.

Find the last ten digits of the series, 11 + 22 + 33 + ... + 10001000.
=end

# PROGRAM self_powers
def self_powers
# compute self powers base exponent are the same
base = 1
# computing up to some number
# take the base and exponent (starting at one) and compute
# take that value and push to an array
array_of_self_powers = Array.new()
# do while the number/exp is less than some number
while base <= 1000
# then increment the base and exp and push that result in the array
  array_of_self_powers << (base**base)
  base += 1
end

# then take the result array and inject to find the total converting to string
grand_total = array_of_self_powers.inject(0) { |r, e| r + e }.to_s.split('')

print grand_total.drop(grand_total.size - 10)
# take the size - 10 as the start and prin till the end


end

self_powers


