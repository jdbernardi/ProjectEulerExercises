

def isValidWalk(walk)
  if walk.length == 10
    x = 0
    y = 0
    start = [x, y]
    10.times do
      path = walk.shift
      #print path
      #print "each pass:#{start}"
      if path == 'n'
        start = [x, y+=1]
        #print start
      elsif path == 'e'
        start = [x+=1, y]
        #print start
      elsif path == 's'
        start = [x, y-=1]
        #print start
      elsif path == 'w'
        start = [x-=1, y-=1]
        #print start
      end
    end

    
  if start == [0,0]
    return true
  else 
    return false
  end

  else
    return false
    
  end

  #start a point
  #take the first element and walk that direction
  #then take the next element
  #until all element have been selected
  #if there are less than 10 elements the walk is too short
  #if the walk is more than 10 elements, the walk is too long
  #only take an array that is 10 elements
  #each direction follows a path that must be tracked
  #each direction should be assigned a grid coordinate
  #each x and y is counted based on the direction given
  #if north, 0,1, south, 0 -1, west etc
  #only if the result is 0,0 have you finished where you started
 
end
isValidWalk(['n','s','n','s','n','s','n','s','n','s'])

