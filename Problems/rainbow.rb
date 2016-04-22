require 'bigdecimal'

def rainbow


  # 7 colors and 70 balls (10 balls on one color

  rainbow = %w(r r r r r r r r r r o o o o o o o o o o y y y y y y y y y y g g g g g g g g g g b b b b b b b b b b i i i i i i i i i i v v v v v v v v v v)
  arr = []
  number_of_balls = 70

  for x in (1..20)

    random = rand(number_of_balls)

      arr << rainbow[random]
      rainbow.compact.delete_at(random)
      number_of_balls -= 1
  end

  color_count = arr.inject(Hash.new(0)) { |total, e| total[e] +=1; total}




    




end

rainbow