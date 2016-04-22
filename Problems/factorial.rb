=begin
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!
=end


# PROGRAM factorial
def factorial(num)

  # need array for the digits

  # method for factorial
  array = []

  while num >= 1
    array << num
    num -= 1
  end

  print array.inject(1) { |r, e| r * e }.to_s.split('').map { |x| x.to_i}.inject(0) { |r, e| r + e }

end


p "Enter a number"
num = gets.chomp

factorial(num.to_i)