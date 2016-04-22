=begin
The Fibonacci sequence is defined by the recurrence relation:

Fn = Fn−1 + Fn−2, where F1 = 1 and F2 = 1.
Hence the first 12 terms will be:

F1 = 1
F2 = 1
F3 = 2
F4 = 3
F5 = 5
F6 = 8
F7 = 13
F8 = 21
F9 = 34
F10 = 55
F11 = 89
F12 = 144
The 12th term, F12, is the first term to contain three digits.

What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
=end

# array to start fib(1, 1)
# push into the array each number added together
# need to check the length of each element at each pass to see < 1000 digits

def largest_fib

  fib = [1,1]
  x = 0



while fib[-1].to_s.length != 1000
    fib << (fib[x] + fib[x + 1])
    x += 1

end


fib.each_with_index { |x, index| puts "#{x.to_s.length} and index:#{index}"}

end

largest_fib
