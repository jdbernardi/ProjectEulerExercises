=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end

first_number = 999
second_number = 999
num = 0
rev_num = 1

#PROGRAM palindrome
  #start with the 2 highest 3-digit numbers (999 999)

  #multiply them together

while num != rev_num

  product = first_number * second_number
  num = product.to_s
  rev_num = product.to_s.reverse
  #decrement the first number in case we loop again
  first_number -= 1
  #if the number reversed equals the original number
  if rev_num == num 
    puts "BOOM"
    puts "The highest palindrome is #{num} when multiplying #{first_number} and #{second_number}"
    #this is the highest palindrome
    break
  end
  #decrement the second number for the next pass
  second_number -= 1
  #if the test fails again, decrement the first number
  #repeat

end



