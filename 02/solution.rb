def get_integer_values
  [gets, gets].map{ |s| s.chomp.to_i }
end

puts "Would you like to [a]dd, [s]ubtract, [m]ultiply, or [d]ivide?"
response = gets.chomp

case response.downcase
when 'a'
  puts "Which 2 numbers would you like to add?"
  operator = :+

when 's'
  puts "Which 2 numbers would you like to subtract?"
  operator = :-

when 'm'
  puts "Which 2 numbers would you like to multiply?"
  operator = :*

when 'd'
  puts "Which 2 numbers would you like to divide?"
  operator = :/
end

answer = get_integer_values.inject(operator)
puts "The answer is... #{ answer }"
