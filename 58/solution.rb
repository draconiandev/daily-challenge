class Fixnum
  def base(n)
    alphabet = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    temp = self
    i=1
    array = []
    while temp > 0
      remainder = temp % n**i
      array << (remainder / n**(i-1))
      temp -= remainder
      i += 1
    end
    array.reverse.map{|i| alphabet[i..i]}.join
  end
end

# problem
puts 19959694.base(35)
puts 376609378180550.base(29)

# bonus
(2..36).each do |b| 
  num=10858.base(b)
  puts b if num == num.reverse
end