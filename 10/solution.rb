def validate(number)
  if number.length.between?(8, 14)
    if number.length == 8
      noareacode(number)
    elsif number.length == 10
      noseperators(number)
    elsif number.length == 12
        twodashordot(number)
    elsif number.length == 14
        areacode(number) or areacodewithspace(number)
    else
      return false
    end
  else
    return false
  end
  
end

def noareacode(number)
  number = number.split("")
  return true if number[3] == "-"
end

def noseperators(number)
  number !~ /\D/
end

def twodashordot(number)
  number = number.split("")
  return true if (number[3] == "-" and number[7] == "-") or (number[3] == "." and number[7] == ".")
end

def areacode(number)
  number = number.split("")
  return true if number[0] == "(" and number[4] == ")" and number[8] == "-"
end

def areacodewithspace(number)
  number = number.split("")
  return true if number[0] == "(" and number[4] == ")" and number[5] == " " and number[9] == "-"
end

print 'Please enter your phone number: '
number = gets.chomp

valid = validate(number)

if valid
  print 'A valid phone number'
else
  print 'An invalid phone number'
end
