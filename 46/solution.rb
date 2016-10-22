def population_count(n)
  puts n.to_s(2).split('').count('1')
end

population_count(23)
population_count(42)