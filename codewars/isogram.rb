def isogram?(word)

  # take the word and split it into an array
  one_array = word.split('')
  two_array = word.split('')
  three_array = one_array & two_array
  # use the comparison to match two arrays
  # if the lenght of the array is less than what started, it aint an isogram!

  if three_array.count == one_array.count
    return true
  else 
    return false
  end

=begin
  print "one:#{one_array}"
  puts ''
  print "two:#{two_array}"
  puts ''
  print "three:#{three_array}"
=end

end

isogram?("jee")