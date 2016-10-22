# t1 = Time.now
# (0..100000000).to_a
# t2 = Time.now
# puts "First method: #{t2-t1}s"

# t3 = Time.now
# [*0..100000000]
# t4 = Time.now
# puts "Second method: #{t4-t3}s"

# t5 = Time.now
# Array (0..100000000)
# t6 = Time.now
# puts "Third method: #{t6-t5}s"

# # Fastest method is first method
# # Benchmarks
# # First method: 3.248830189s
# # Second method: 3.993923903s
# # Third method: 3.680004689s

array = (0..1000000).to_a
array << Random.rand(1000000)

# array.detect{ |e| a.count(e) > 1 }

t1 = Time.now
puts array.group_by{ |e| e }.select { |k, v| v.size > 1 }.map(&:first)
t2 = Time.now
puts "First method: #{t2-t1}s"

t3 = Time.now
puts array.sort.chunk{ |e| e }.select { |e, chunk| chunk.size > 1 }.map(&:first)
t4 = Time.now
puts "Second method: #{t4-t3}s"

t5 = Time.now
puts array.select{ |e| array.count(e) > 1 }.uniq
t6 = Time.now
puts "Third method: #{t6-t5}s"

t7 = Time.now
puts array.detect{ |e| array.count(e) > 1 }
t8 = Time.now
puts "Fourth method: #{t8-t7}s"

# # Fastest method is first method
# # Benchmarks
# # First method: 0.517412232s
# # Second method: 0.536845216s
# # Third method: 3.680004689s
# # Fourth method: 3.680004689s
