def stripped_string(stringy, stripper)
  puts stringy.gsub(/[#{stripper}]/, '')
end

stripped_string("Daily Programmer", "aeiou ")