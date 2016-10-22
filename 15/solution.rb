# ljust(integer, padstr=' ') → new_str
# rjust(integer, padstr=' ') → new_str
# Integer represents the width of screen
# If integer is greater than the length of str,
# returns a new String of length integer with str left justified
# and padded with padstr; otherwise, returns str.

print 'Do you want the file to be [l]eft aligned or [r]ight aligned?: '
option = gets.chomp
case option.downcase
when 'l'
  if File.exist?('random.txt')
    string = File.readlines('random.txt').join.to_s
    File.write('random.txt', string.ljust(80))
  else
    puts 'No file'
  end
when 'r'
  if File.exist?('random.txt')
    string = File.readlines('random.txt').join.to_s
    File.write('random.txt', string.rjust(80))
  else
    puts 'No file'
  end
end
