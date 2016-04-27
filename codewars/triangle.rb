=begin
The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:

1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

Let us list the factors of the first seven triangle numbers:

 1: 1
 3: 1,3
 6: 1,2,3,6
10: 1,2,5,10
15: 1,3,5,15
21: 1,3,7,21
28: 1,2,4,7,14,28
We can see that 28 is the first triangle number to have over five divisors.

What is the value of the first triangle number to have over five hundred divisors?
=end

# PROGRAM triangle
def triangle
  number_of_divisors = []
  triangle_numbers_array = []
  number = 100000
# triangle number takes the sequence, starting at 1
# and adds each number together to get the triangle number
# that triangle number then has a number of divisors
# we want to the number of divisors for that triangle number to be 500
# Until that number is 500, we need to generate the triangle number
while number_of_divisors.count <= 500
  number_of_divisors = []
  
  # will increment triangle
  triangle_numbers_array << number
  # starting at 1, we will add each number in that array together
  number_injected = triangle_numbers_array.inject(0) { |r, e| r + e }
  # then we will have a divisor count starting at 1 and check %
  # if the modulous == 0
  for num in (1..number_injected)
      number_of_divisors << num unless number_injected % num != 0
  end
    # it gets pushed to the divisor array (number_of_divisors.count)
    # AND check the divisors
      # it will loop and check the number of divisors in the array
        # AND reset if not 500
  number += 1
  puts number
end

# we'll get here if the divisors is 500 and print the triangle number
# and then check the divisors
print number_injected

end # end def triangle

triangle
