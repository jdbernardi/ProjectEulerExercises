=begin

Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.


How many such routes are there through a 20×20 grid?

=end

#PROGRAM lattice(grid size)
def lattice(size)
#find all the combinations only moving down or right



grid = Array.new(size) { Array.new(size, 1) }
count = 0
x = 0
y = 0 



  #first go all the way right
  while y < size
    puts grid[y]
    y += 1
  end

  #then go all the way down
  while x < size
    puts grid[x]
    x += 1
  end

  if grid[x][y] == grid[size-1][size-1]
    puts "true"
  else
    puts "false"
  end




end
lattice(4)


def hello(str)
  puts "#{str}"
end

def move_right(x,y)
  return grid[x][y+1]
end

def move_down(x, y)
  return grid[x+1][y]
end

def end_of_path(x, y)
  if grid == "end"
    #exit path
    count += 1
  end
  return grid[0][0]
end
#starting with the grid size
#you need to determine where the start and end path is
#with an array of 2x2 you'll have 8 path points not counting 0,0

#first your travel to the top right (0,y.max) 
#then down (max, max) to (exit)
  #that will increment 1 path

#then you'll go right (0, y-1)
#then you'll down (max)
#then right to the exit
  #that will increment 1 path
#then you will repeat going less one y value until you hit 0


