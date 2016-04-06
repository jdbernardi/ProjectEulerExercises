
def tribonacci(signature, length)

  #create an array to store the sequence
  #push the first 3 numbers in the array to start the sequence
  trib_array = signature
  #take the length and use it to create the array
  #or use it to loop n times

  x = 0

if length == 0
  trib_array = []
elsif length == 1
  trib_array.shift(1)
elsif length == 2
  trib_array.pop
else
  (length-signature.count).times do 
    trib_array << trib_array[x..x+2].inject(0) { |result, element| result + element }
    x += 1
  end
end
  #go to the next item in the array
  #inject 3 values and push to the array
print trib_array
end


tribonacci([1,1,1],10)#,[1,1,1,3,5,9,17,31,57,105])
tribonacci([0,0,1],10)#,[0,0,1,1,2,4,7,13,24,44])
tribonacci([0,1,1],10)#,[0,1,1,2,4,7,13,24,44,81])
tribonacci([1,0,0],10)#,[1,0,0,1,1,2,4,7,13,24])
tribonacci([0,0,0],10)#,[0,0,0,0,0,0,0,0,0,0])
tribonacci([1,2,3],2)#,[1,2,3,6,11,20,37,68,125,230])
tribonacci([3,2,1],10)#,[3,2,1,6,9,16,31,56,103,190])
tribonacci([1,1,1],3)#,[1])
tribonacci([300,200,100],0)#,[])
tribonacci([0.5,0.5,0.5],30)#,[0.5,0.5,0.5,1.5,2.5,4.5,8.5,15.5,28.5,52.5,96.5,177.5,326.5,600.5,1104.5,2031.5,3736.5,6872.5,12640.5,23249.5,42762.5,78652.5,144664.5,266079.5,489396.5,900140.5,1655616.5,3045153.5,5600910.5,10301680.5])
