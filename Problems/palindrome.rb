=begin
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
=end

# PROGRAM palindrome
def palindrome
# need palindrome array
palindrome_array = []
number_1 = 999
# two numbers being multplied 

while number_1 >= 100
  number_2 = 999
  while number_2 >= 100
    product = number_1 * number_2
    if palindrome?(product) == true
      palindrome_array << product
    end
    number_2 -= 1
  end
  number_1 -= 1
end

print palindrome_array.max
# with both starting at 999 and the other number decereasing
# the first number will decrease after the second goes to 100
end



def palindrome?(product)
  product.to_s == product.to_s.reverse ? true : false
end

palindrome
