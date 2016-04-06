def array_diff(a, b)

  a.delete_if { |x| b.include?(x) }
  print a

end







array_diff([1,2], [1]) # "a was [1,2], b was [1], expected [2]")
array_diff([1,2,2], [1]) #, "a was [1,2,2], b was [1], expected [2,2]")
array_diff([1,2,2], [2])#, "a was [1,2,2], b was [2], expected [1]")
array_diff([1,2,2], [])#, "a was [1,2,2], b was [], expected [1,2,2]")
array_diff([], [1,2])#, "a was [], b was [1,2], expected []")
