
# using a hash to count occurences in an array

def method(array)

var = array.inject(Hash.new(0)) { |total, e| total[e] += 1; total }

print var

end




method(%w(Hello how are you today I hope you are well Hello to you too))
