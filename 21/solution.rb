def maxnum(num)
  puts num.to_s.split("").sort.reverse.join.to_i
end

maxnum(7598642)