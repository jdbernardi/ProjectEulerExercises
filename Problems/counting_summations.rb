=begin
It is possible to write five as a sum in exactly six different ways:

4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1

How many different ways can one hundred be written as a sum of at least two positive integers?
=end

#PROGRAM counting(number)
def counting_summations(number)
#take the number and find all 2 integer adds
result = number
count = 0
int1 = 0


  #start with 0
  #subtract 1 each time

  #increment the count
#then take 3 integers and subtract
#last count will be 1+1 n.times
#display the addition each time
end

puts "Enter a number"
number = gets.chomp
counting_summations(number)