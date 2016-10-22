$chary = '@'

def print_triangles(num)
# normal triangle
  (1..num).each { |i| puts $chary*i }
# reverse triangle
  r = num.to_i..1
  (r.first).downto(r.last).each { |i| puts $chary*i }
# right-angled triangle
  (1..num).each { |i| puts ($chary*i).to_s.rjust(40) }
end

print_triangles(7)
