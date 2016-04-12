=begin
Sum of Pairs

Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

=end

def sum_pairs(ints, s)
    # the list of integers starting from the left will be checked against the sum
 

     result = Array(ints).combination(2).find_all { |x, y| x + y == s } || [] 

     



 

=begin

    if array_sums == []
      return nil
    end

    while i < compare_array.count
      for j in (1...ints.size)
        if compare_array[i] + ints[j] == s
          #puts "#{compare_array[i]} and #{ints[j]}"
          array_sums << [compare_array[i], compare_array.index(i)]
        end
      end
      i += 1
      j = i
    end

=end

end


l1= [1, 4, 8, 7, 3, 15]
l2= [1, -2, 3, 0, -6, 1]
l3= [20, -13, 40]
l4= [1, 2, 3, 4, 1, 0]
l5= [10, 5, 2, 3, 7, 5]
l6= [4, -2, 3, 3, 4]
l7= [0, 2, 0]
l8= [5, 9, 13, -3]


#sum_pairs(l1, 8) #== [1, 7], "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")


#sum_pairs(l2, -6) #== [0, -6], "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")


#sum_pairs(l3, -7) #== nil, "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")

sum_pairs(l4, 2) #== [1, 1], "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
#sum_pairs(l5, 10) #== [3, 7], "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
#sum_pairs(l6, 8) #== [4, 4], "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
#sum_pairs(l7, 0) #== [0, 0], "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
#sum_pairs(l8, 10) #== [13, -3], "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")
