def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  # the first check should be if the number is a perfect square
  # use the sqrt method to see if the answer is an int
  if Math.sqrt(sq) % 1 == 0
    sq += 1
    while Math.sqrt(sq) % 1 != 0
      sq += 1
    end
  return sq
  else
     return -1
  end
end

puts "Enter a number"
val = gets.chomp
find_next_square(val.to_i)

=begin
describe "find_next_square" do
  it "should return the next square for perfect squares" do
    Test.assert_equals(find_next_square(121), 144, "Wrong output for 121")
    Test.assert_equals(find_next_square(625), 676, "Wrong output for 625")
    Test.assert_equals(find_next_square(319225), 320356, "Wrong output for 319225")
    Test.assert_equals(find_next_square(15241383936), 15241630849, "Wrong output for 15241383936")
  end
  
  it "should return -1 for numbers which aren't perfect squares" do
    Test.assert_equals(find_next_square(155), -1, "Wrong output for 155")
    Test.assert_equals(find_next_square(342786627), -1, "Wrong output for 342786627")
  end
end
=end
