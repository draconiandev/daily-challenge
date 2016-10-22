# Calculate if 'n' is a triangle number
# If it is, continue. If not, find the nearest triangle number
# Print

# A triangular number is the number of dots in an equilateral triangle evenly filled with dots.
# For example, three dots can be arranged in a triangle; thus three is a triangle number.
# The nth triangle number is the number of dots in a triangle with n dots on a side.
class Triangle

  def triangle_numbers
      Array.new(25) {|i| i*(i+1)/2 }
  end

  def print_triangles(n)
    array = (1..n).to_a.reverse
    order = 1
    (1..n).each do |num|
      array[order - 1, num].each{ |i| print " #{i} " }
      order += num
      puts
    end
    (array.first).downto(array.last).each  { |i| puts " #{i} " }
  end

  def triangle(n)
    if triangle_numbers.include?(n)
      print_triangles(n)
    else
      n = triangle_numbers.min_by { |x| (x-n).abs }
      print_triangles(n)
    end
  end
end

t = Triangle.new
t.triangle(12)