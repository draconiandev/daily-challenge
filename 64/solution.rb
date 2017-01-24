def divisors(num)
  (1..num).select { |i| num % i == 0 }
end

def sum_of_divisors(num)
  divisors(num).reduce(:+)
end

def num_of_divisors(num)
  divisors(num).size
end

def totatives(num)
  (1..num).select { |i| num.gcd(i) == 1 }
end

def totient(num)
  totatives(num).size
end
