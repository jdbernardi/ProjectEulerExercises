def getmiddle(name)
  #take the name and find out the count
  if name.length % 2 == 0
  #if it is even return the length/2 and length/2 + 1
    print name[((name.length/2) - 1)] + name[(name.length/2)]
  #if odd, return the char at index length/2
else
    print name[((name.length-1)/2)]
end

end


getmiddle("Joseph")
getmiddle("Bob")
getmiddle("Alexandria")