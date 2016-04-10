=begin
Write a function insertDash(num) that will insert dashes ('-') between each two odd numbers in num. For example: if num is 454793 the output should be 4547-9-3. Don't count zero as an odd number.
=end

def insert_dash(num)

  # take the number and conver to a string
  final_array = num.to_s.split('').map { |x| x.to_i}
  # then split the number
  # take each number and check if even
  
  x = 0

  while x < final_array.count
    if final_array[x] % 2 != 0 && final_array[x+1] % 2 != 0
      final_array[x.to_s].push("-")
    else
      final_array[x.to_s].push(x)
    end
    x += 1
  end

=begin
  new_array.each { |x, index| 

    if x.to_i % 2 == 0 
      final_array << x
    elsif index != new_array.size - 1 
      final_array << x + "-"
    end 
  }
=end
  # if it's even, add to the array
  # if it's odd, add a hyphen and push to the array

  

  

  print new_array.join


end


insert_dash(125633)