def dups(stringy)
  result1 = []
  result2 = []
  last   = nil
  # Returns without consecutive duplicates
  stringy.split("").each do |o|
    result1 << o unless last == o
    last = o
  end
  # Returns the consecutive duplicates
  stringy.split("").each do |o|
    result2 << o if last == o
    last = o
  end

  puts result1.join + ' : ' + result2.join
end

dups("ddaaiillyypprrooggrraammeerr")
dups("balloon")
dups("aabbccddeded")
dups("flabby aapples")
