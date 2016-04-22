=begin

Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
=end

def amicable

number = 1
arr3 = []

while number < 10000
  arr1 = []
  arr2 = []

  arr1 = even_array(number)

    sum_of_arr1 = arr1.inject(0) { |r, e| r + e }

  arr2 = even_array(sum_of_arr1)

    sum_of_arr2 = arr2.inject(0) { |r, e| r + e }

  if number == sum_of_arr2 && number != sum_of_arr1
    arr3 << sum_of_arr1 
  end 

  number += 1

end

print arr3

print arr3.inject(0) { |r, e| r + e }




end

def even_array(number)
  arr = []
  for num in (1...number)
    arr << num unless number % num != 0
  end
  return arr

end


amicable