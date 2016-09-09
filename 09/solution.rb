#!/usr/bin/ruby
def sort_numbers
  puts 'Type the numbers you want to sort with a space in between: '
  num = gets.chomp
  sorted = num.split.map {|x| Integer(x) rescue nil }.compact.sort
  p sorted
end

def sort_strings
  puts 'Type the words you want to sort alphabetically with a space in between: '
  str = gets.chomp
  sorted = str.split.sort
  p sorted
end


def sort
  puts "Would you like to sort [n]umbers or sort [w]ords?"
  response = gets.chomp
  case response.downcase
  when 'n'
    sort_numbers
  when 'w'
    sort_strings
  end
end

sort
