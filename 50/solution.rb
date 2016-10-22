require 'yaml'

def store_credit(credit, list)
  combo = list.combination(2).find { |x, y| x + y == credit }
  if combo
    print credit, " = ", combo, "\n"
  else
    puts "No value in the list matches credits worth #{credit}"
  end
end

@store_credit = YAML.load_file('small.yml')

def loop_each
  credits = @store_credit.keys
  list = @store_credit.values
  i = 0
  while i < @store_credit.length
    store_credit(credits[i].to_s.to_i, list[i])
    i += 1
  end
end

loop_each
