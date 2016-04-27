=begin
By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom of the triangle below:

              75
             95 64
            17 47 82
           18 35 87 10
          20 04 82 47 65
         19 01 23 75 03 34
        88 02 77 73 07 63 67
       99 65 04 28 06 16 70 92
      41 41 26 56 83 40 80 70 33
     41 48 72 33 47 32 37 16 94 29
    53 71 44 65 25 43 91 52 97 51 14
   70 11 33 28 77 73 17 78 39 68 17 57
  91 71 52 38 17 14 91 43 58 50 27 29 48
 63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

NOTE: As there are only 16384 routes, it is possible to solve this problem by trying every route. However, Problem 67, is the same challenge with a triangle containing one-hundred rows; it cannot be solved by brute force, and requires a clever method! ;o)

=end

# PROGRAM routes

# each row in the pyramid needs to be in an array 
# each number will have to be referenced for an index number to determine if adjacent to the top or bottom
# starting at the top row
# determine the max number
  # then check the row below for the max number in that array

  # element 1 will always be adjacent to 1 and 2 in the row below
  # element 2 will alwasy be adjacent to 2 and 3 in the row below and so on...
  # using the next two rows, find the largest sum to determine the path
  # what if we find the max number in each array and determine the index
  # if the elements are next to each other that will drive the route

  def routes

row1 = [75]
row2 = [95, 64]
row3 = [17, 47, 82]
row4 = [18, 35, 87, 10]
row5 = [20, 04, 82, 47, 65,]
row6 = [19, 01, 23, 75, 03, 34,]
row7 = [88, 02, 77, 73, 07, 63, 67,]
row8 = [99, 65, 04, 28, 06, 16, 70, 92,]
row9 = [41, 41, 26, 56, 83, 40, 80, 70, 33,]
row10 = [41, 48, 72, 33, 47, 32, 37, 16, 94, 29,]
row11 = [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14,]
row12 = [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57,]
row13 = [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48,]
row14 = [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31,]
row15 = [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23]
