print 'Enter a string to see all its permutations: '
perm = gets.chomp

ary = perm.chars
x = ary.length

# 1..x each { |e| p.ary.permutation(x).to_a }

for e in 1..x
  p ary.permutation(e).to_a
end
# p ary.permutation.to_a