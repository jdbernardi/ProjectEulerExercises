=begin

The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

#PROGRAM natural_numbers
#TOTAL for square of sums
def natural_numbers
square_of_sums = []
#TOTAL for sum of squares
sum_of_squares = []

for x in (1..100) 
  square_of_sums << x**2
end

for x in (1..100)
  sum_of_squares << x
end
  #print square_of_sums
  #puts ""
  #print sum_of_squares

  result = ((sum_of_squares.inject(0) { |r, e| r + e })**2) - 
  (square_of_sums.inject(0) { |r, e| r + e })
  puts result 

end


natural_numbers()
#take the results and subtract
