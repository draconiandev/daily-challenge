# Method 1 - Pure Ruby
foo = ['a', 'x', 34, '4', 'v']
num = foo.length
if num % 2 == 0
  p foo.each_slice(num/2).to_a
else
  p foo.each_slice(num/2+1).to_a
end

# Using Rails/Active Support
require "active_support/all"
p foo.in_groups(num/2, false)