require "date"

print 'Enter the year: '
@year = gets.chomp.to_i

def century
  cent = @year.to_s.split('')
  cent = cent[0..1].join.to_i + 1
  puts "Century: #{cent}"
end

century
puts "Leap Year: #{Date.leap?(@year)}"
