def modulo_16(n)

  # need to find the remainder without using Fixnum methods
  # so what other operations are there?
=begin
  num_array = []

  num.times { |x| num_array << x }

  while num_array.count > 16
    16.times { |x| num_array.pop }
  end
=end

 
 num_array = []
  
  for i in (1..n) 
    num_array << i
  end

  unless num_array[-1,16]
    for i in (1..16)  
       num_array.pop 
    end
  end


  print num_array.count
  

=begin
  if (sixteen & num) == 0
    print num
  elsif (sixteen & num) == 16
    print num
  end
=end
end






#modulo_16(4)
modulo_16(20)
#modulo_16(18)