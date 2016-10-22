require "date"

def parse(date)
  ary = date.split("-")
  date = ary[0].to_i
  month = ary[1].to_i
  year = ary[2].to_i
  d = Date.new(year, month, date)
  puts d.strftime('%j')
end

print 'Enter the date for which you want to find the day number in dd-mm-yyyy format: '
date = gets.chomp
parse(date)