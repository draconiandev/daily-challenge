array = (1..100).to_a 
target = Random.rand(100)
puts "Random Number: #{target}\n\r"

def sum_of_two(array, target)
  combo = array.combination(2).to_a
  combo_sum = combo.map { |e| e.inject(0, :+) }
  indices = combo_sum.each_index.select { |i| combo_sum[i] == target }
  if indices.length > 0
    puts "There are #{indices.length} combinations"
    indices.each do |ec|
      p combo[ec]
    end
  else
    puts "No such integers exist for #{target}"
  end
end

sum_of_two(array, target)

# # Two find all possible combinations

# def sum_of(array, target, combo = [])
#   # puts target
#   s = combo.inject(0, :+)
#   puts "sum of #{combo} = #{target}" if s == target
#   return if s >= target
#   (0..(array.length - 1)).each do |i|
#     n = array[i]
#     remaining = array.drop(i+1)
#     sum_of(remaining, target, combo + [n])
#   end
# end

# sum_of(array, target)
