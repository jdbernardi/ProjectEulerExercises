=begin

2**15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 2**1000?

=end

#PROGRAM sum_of_digits(base, exponent)
def sum_of_digits(base, exponent)
  product = base**exponent
#take a value and split - may need to convert to string
#inject the value
  total = product.to_s.split('').map { |x| x.to_i }.inject(0) { |r, e| r + e }

  puts total

  #total = product_array.inject(0) { |r, e| r + e }
#return the sum of digits

#end
end





puts "Please enter a base"
base = gets.chomp.to_i
puts "Please enter an exponent"
exponent = gets.chomp.to_i

sum_of_digits(base, exponent)