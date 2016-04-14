def compose(f,g)
  # two functions begin passed 1 and 2
  # need to create a new fuction from these
  lambda { |*args| f[g[*args]]}

end



add1 = ->(a){a + 1}
id   = ->(a){a}

compose(add1,id).(0) == 1 