def append_arrays
  arr1 = ['a', 'b', 'c', 1, 4]
  arr2 = ['a', 'x', 34, '4']
  arr3 = arr1 += arr2
  puts arr3.uniq!
end

append_arrays