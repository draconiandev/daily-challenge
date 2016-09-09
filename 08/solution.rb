def x(n, singular, plural=nil)
    if n == 1
        "1 #{singular}"
    elsif plural
        "#{n} #{plural}"
    else
        "#{n} #{singular}s"
    end
end

(1..99).each do |n|
  print "#{x(n, 'bottle')} of beer on the wall, take one down, pass it around. "
end
