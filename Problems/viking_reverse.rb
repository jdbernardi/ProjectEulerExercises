def reverse(arr)

# start with the original array 
array1 = arr
array2 = []
x = (array1.count-1)
# taking the last element, we push that into a new array
(array1.count).times do
  array2 << array1[x]
  x -= 1
end
# then we take the second to last and push into the new array
# we repeat this until the new array has the same count as the original

print array2



end

reverse([1,2,3,4,5])