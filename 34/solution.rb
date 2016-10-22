def ordinalize(number)
  "#{number}#{ordinal(number)}"
end

def ordinal(number)
  abs_number = number.to_i.abs

  if (11..13).include?(abs_number % 100)
    "th"
  else
    case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
    end
  end
end

# require 'active_support/all'

def squares
  array = []
  3.times do |n|
    # puts "Enter #{(n+1).ordinalize} number"
    puts "Enter number #{(n+1)}"
    n = gets.to_i
    array << n
  end
  print array, "\n"
  puts "The sum of the squares of two largest numbers is #{array.max(2).map { |e| e**2 }.reduce(:+)}"
end

squares
