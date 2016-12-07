def polite_numbers_for(num)
  polite_array = [];
  (1..(num/2)+1).each do |n|
    polite = find_polite(0, n, num, [])
    polite_array.push(polite) unless polite.nil?
  end
  p polite_array
end

def find_polite(sum, number, num, polite_array)
  sum = sum + number
  polite_array.push(number)
  if sum < num
    find_polite(sum, number+1, num, polite_array)
  elsif sum > num
    return nil
  elsif sum == num
    return polite_array
  end
end

polite_numbers_for(4)
