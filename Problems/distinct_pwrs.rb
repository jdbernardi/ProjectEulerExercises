=begin

Consider all integer combinations of ab for 2 ≤ a ≤ 5 and 2 ≤ b ≤ 5:

22=4, 23=8, 24=16, 25=32
32=9, 33=27, 34=81, 35=243
42=16, 43=64, 44=256, 45=1024
52=25, 53=125, 54=625, 55=3125
If they are then placed in numerical order, with any repeats removed, we get the following sequence of 15 distinct terms:

4, 8, 9, 16, 25, 27, 32, 64, 81, 125, 243, 256, 625, 1024, 3125

How many distinct terms are in the sequence generated by ab for 2 ≤ a ≤ 100 and 2 ≤ b ≤ 100?

=end

# PROGRAM distinct_terms()
def distinct_terms


terms_array = []

# have a base and exponent working in a specific range
# a and b will both increment
for a in (2..100)
# take min value of a and the min value of b
# once be is maxed, increment a and reset b
  for b in (2..100)
    terms_array << a**b 
  end
end
# take a**b and put into an array
#   then increment b and repeat until b is max
# take all the values and perform a uniq function to remove the dups
print terms_array.uniq.sort.count

end

distinct_terms
# then print the count of the elements in the array