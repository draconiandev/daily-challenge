# # PENDING

# array = ('A'..'Z').to_a
# @base_26 = Hash[(0...array.size).zip(array)].invert

# def base_product(str1, str2)
#   num1 = str1.gsub(/[A-Z]/, @base_26).to_i
#   num2 = str2.gsub(/[A-Z]/, @base_26).to_i
#   num = num1 * num2
#   p num.to_s.gsub(/[0-9]/, @base_26.invert)
# end

# base_product('CSGHJ', 'CBA')
