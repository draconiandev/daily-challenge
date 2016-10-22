ary = [1, 2, 3, 4, 5, 6]
k = 2
p ary.first(k).reverse.concat(ary - ary.first(k))

# Verbose

# def blockreverse(ary, k)
  # sliced_ary = ary.first(k)
  # rest_ary = ary - sliced_ary
  # reverse_ary = sliced_ary.reverse
  # new_ary = reverse_ary.concat(rest_ary)
  # p new_ary
# end

# blockreverse(ary, k)
