def in_words(int)
  numbers_to_name = {
    1000000 => "million",
    1000 => "thousand",
    100 => "hundred",
    90 => "ninety",
    80 => "eighty",
    70 => "seventy",
    60 => "sixty",
    50 => "fifty",
    40 => "forty",
    30 => "thirty",
    20 => "twenty",
    19=>"nineteen",
    18=>"eighteen",
    17=>"seventeen", 
    16=>"sixteen",
    15=>"fifteen",
    14=>"fourteen",
    13=>"thirteen",              
    12=>"twelve",
    11 => "eleven",
    10 => "ten",
    9 => "nine",
    8 => "eight",
    7 => "seven",
    6 => "six",
    5 => "five",
    4 => "four",
    3 => "three",
    2 => "two",
    1 => "one"
  }
  str = ""
  numbers_to_name.each do |num, name|
    if int == 0
      return str
    elsif int.to_s.length == 1 && int/num > 0
      return str + "#{name}"      
    elsif int < 100 && int/num > 0
      return str + "#{name}" if int%num == 0
      return str + "#{name} " + in_words(int%num)
    elsif int/num > 0
      return str + in_words(int/num) + " #{name} " + in_words(int%num)
    end
  end
end

def x(n, singular, plural=nil)
  if n == 1
      "#{singular}"
  elsif plural
      "#{plural}"
  else
      "#{singular}s"
  end
end

def ordinalize(number)
  "#{number}#{ordinal(number)}"
end

def ordinal(number)
  abs_number = number.to_i.abs

  if (11..13).include?(abs_number % 100)
    "th"
  else
    case abs_number % 10
      when 1; "st"
      when 2; "nd"
      when 3; "rd"
      else    "th"
    end
  end
end

# 99 beer bottles

def ninety_nine
  puts "*"*100
  puts "Ninety nine bottles of beer", "\n"
  puts "*"*100
  (1..99).reverse_each do |n|
    print "#{in_words(n).capitalize} #{x(n, 'bottle')} of beer on the wall, #{in_words(n)} #{x(n, 'bottle')} of beer. ", "\n"
    print "Take one down, pass it around, #{in_words(n-1)} #{x(n-1, 'bottle')} of beer on the wall ", "\n", "\n"
  end
  puts "No more bottles of beer on the wall, no more bottles of beer. \nGo to the store and buy some more, 99 bottles of beer on the wall.", "\n", "\n"
  puts "*"*100
end

# Old MacDonald

def old_mc
  animal_sounds = {
    "cow" => "moo",
    "chicken" => "cluck",
    "turkey" => "gobble",
    "kangaroo" => "g'day mate",
    "T-Rex" => "GAAAAARGH",
    "duck" => "quack"
  }
  puts "Old Macdonald Had a Farm", "\n"
  puts "*"*100
  animal_sounds.each do |animal, sound|
    print "Old Macdonald had a farm, E-I-E-I-O", "\n"
    print "And on his farm he had a #{animal}, E-I-E-I-O", "\n"
    print "With a #{sound}-#{sound} here and a #{sound}-#{sound} there", "\n"
    print "Here a #{sound} there a #{sound}", "\n"
    print "Everywhere a #{sound}-#{sound}", "\n"
    print "Old Macdonald had a farm, E-I-E-I-O", "\n", "\n"
  end
  puts "*"*100
end

def twelve_days
  gifts = {
    1 => "a totally insufficient dowry",
    2 => "2 nosy in-laws",
    3 => "3 butter chickens",
    4 => "4 Hari Krishnas",
    5 => "5 Indian games",
    6 => "6 IT graduates",
    7 => "7 Eleven workers",
    8 => "8 Bollywood films",
    9 => "9 tele-marketers",
    10 => "10 minute yoga",
    11 => "11 syllable names",
    12 => "12 cricket ball tamperers"
  }
  puts "12 days of Christmas - Desi Version", "\n"
  puts "*"*100
  n = 1
  while n <= 12
    part_gifts = gifts.first(n).to_h.values.join(", ")
    # total_gifts = part_gifts
    print "On the #{ordinalize(n)} day of Christmas my true love gave to me, #{part_gifts}.", "\n"
    n += 1
  end
end

ninety_nine

old_mc

twelve_days