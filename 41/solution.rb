@stringy = 'Nulla porttitor accumsan tincidunt. Pellentesque in ipsum id orci porta dapibus. Curabitur arcu erat, accumsan id imperdiet et, porttitor at sem. Curabitur non nulla sit
amet nisl. Sed porttitor lectus nibh. Proin eget tortor risus. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Nulla quis lorem
ut libero malesuada feugiat. Sed porttitor lectus nibh.'

def ascii_art(stringy)
  print "#{'*'*100}".center(100), "\n"
  print '*', ''.center(99, ' '), '*', "\n"
  printo
  print '*', ''.center(99, ' '), '*', "\n"
  puts "#{'*'*100}"
end

def printo
  if @stringy.size <= 95
    print '*', @stringy.center(99, ' '), '*', "\n"
  else
    split_strings
  end
end

def split_strings
  i = 0
  check_length
  while i < @length
    stringya = @stringy.split.each_slice(4)
    stringyb = stringya.to_a[i].join(" ")
    print '*', stringyb.center(99, ' '), '*', "\n"
    i += 1
  end
end

def check_length
  if @stringy.split.size % 4 == 0
    @length = @stringy.split.size / 4
  else
    @length = @stringy.split.size / 4 + 1
  end
end

ascii_art(@stringy)