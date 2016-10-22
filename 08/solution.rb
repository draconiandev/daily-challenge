def x(n, singular, plural=nil)
  if n == 1
      "1 #{singular}"
  elsif plural
      "#{n} #{plural}"
  else
      "#{n} #{singular}s"
  end
end

(1..99).reverse_each do |n|
  print "#{x(n, 'bottle')} of beer on the wall, #{in_words(n)} #{x(n, 'bottle')} of beer. ", "\n"
  print "Take one down, pass it around, #{in_words(n-1)} #{x(n-1, 'bottle')} of beer on the wall ", "\n", "\n"
end
puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall."
