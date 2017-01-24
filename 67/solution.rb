def to_decimal(num)
  num.to_s(2).to_i
end

def pad_for_32(num)
  num.to_s.rjust(32, '0').reverse
end

def to_binary(str)
  str.to_i 2
end

def whole_damn_thing(num)
  num = to_decimal num
  str = pad_for_32 num
  to_binary str
end

p whole_damn_thing 13
