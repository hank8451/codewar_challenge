def towerBuilder(n_floors)
  [*1..n_floors*2-1].select(&:odd?).map { |n| ("*"*n).to_s.center(n_floors*2-1) }
end

def high(x)
  max_sum = x.split(" ").map { |vab| vab.each_byte.to_a.map{ |a| a-96 }.sum }.max
  max_sum_index = x.split(" ").map { |vab| vab.each_byte.to_a.map{ |a| a-96 }.sum }.index(max_sum) 
  x.split(" ")[max_sum_index]

  # x.scan(/\w+/).max_by{|x|x.sum-x.size*96}
end

p high('what time are we climbing up the volcano')