str1 = "Double, double, toil and trouble"
str2 = "il an"

# To check if str1 includes str2
puts str1.include?(str2)

# To see the index of str2 in str1
puts str1.index(str2) if str1.include?(str2)

# By not using any of the ruby functions / Build my own function

def findSubStringPosition(str1, str2)
  str1_arr = str1.scan('')
  str1_arr.each_with_index do |outer, i|
    str1_arr.each_with_index do |inner, j|
      if str1[i..j] == str2
       puts i
      end
    end
  end
  nil
end

findSubStringPosition(str1, str2)


require 'benchmark'

Benchmark.bmbm do |b|
  b.report("split"){ 100000.times{"Randomstringsareprettyboring".split(//u)} }
  b.report("scan "){ 100000.times{"Randomstringsareprettyboring".scan(//u)} }
end
