#Multiples of 3 and 5
#find the sum of all multiples of 3 or 5 below 1000

=begin
for each number up to 1000
  while we start at one and end at 10000
    we check the first number
    if its divisible by 3 or divible by 5
      we add it to an array 
      go to the next number
    else
      we go to the next number

    after the loop runs 
    take each number in the array and add together
    print the array result
=end



class Multiples 

  sum_array  = Array.new

  for num in 1..1000 do
    if (num % 3 == 0 || num % 5 == 0) then
      sum_array << num
    end

  end

    total = sum_array.inject(0) { |r, e| r + e }
    puts "the total is #{total}"

end
