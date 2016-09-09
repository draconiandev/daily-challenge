def arctan(x, digits)
   xpow = 10**(digits) / x
   n = 1
   sign = 1
   sum = 0
   loop do
       term = xpow / n
       break if term == 0
       sum = sum + sign*(xpow/n)
       xpow = xpow/(x*x)
       n = n + 2
       sign = -sign
   end
   sum
end

def calc_pi(digits)
  print 'Machin like formula: '
  puts 4*(4*arctan(5, digits) - arctan(239, digits))
  print 'Euler formula:       '
  puts 20*arctan(7, digits) + 8*arctan(79/3, digits)
end

p calc_pi(30)