#! ruby

def kadane(array, max_sum = 0 ,maxx = [])
  (1..array.length).each do |sz|
    max_sum = array.each_cons(sz).map { |e| e.reduce(:+) }.max
    maxx << max_sum
    p maxx.max if maxx.length == array.length
  end
end

kadane([1000, -200, 201, -450, 126])

## Version 2 - Dynamic Programming
def DP_solve(a)
    max, head, tail = 0, 0, 0
    cur_head = 0
    sum = [ [0, a[0]].max ] # base case
    (1...a.size).each do |j|
        sum[j] = [0, sum[j-1] + a[j]].max # bottom-up
        cur_head = j if sum[j-1] == 0 and sum[j] > 0
        if sum[j] > max
            head = cur_head
            tail = j
            max = sum[j]
        end
    end
    return max, head, tail
end

## Version 3 - From Ruby Quiz

class Array
# sum the integer values of array contents
  def int_sum
    self.inject(0){|sum,i| sum+i.to_i}
  end

  # find the maximum sub array in an array
  def max_sub_array
    (0...self.size).inject([self.first]) do |max_sub,i|
      (i...self.size).each do |j|
        if max_sub.int_sum < self[i..j].int_sum
          max_sub = self[i..j]
        end
      end
      max_sub
    end
  end
end

    # test example
    if __FILE__ == $0
      my_arr = [-1, 2, 5, -1, 3, -2, 1]
      puts "array: #{my_arr.inspect}"
      puts "maximum sub-array: #{my_arr.max_sub_array.inspect}"
    end
