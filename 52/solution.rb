num = (1..26).to_a
alpha = ('a'..'z').to_a

@hash = Hash[alpha.zip(num)]

@stringy = "Imagine, each, letter and its"

def ranker(stringy)
  sort_by_sum
  sort_by_rank
end

def sort_by_sum
  @string = @stringy.split(/\s*,\s*|\s\band\b\s/)
  i = 0
  @sum = []
  while i < @string.length
    @sum[i] = @string[i].split("").collect { |e| e.downcase.gsub(/[a-z]/, @hash) }.map(&:to_i).reduce(:+)
    @sum << @sum[i]
    i += 1
  end
  @sum.pop
  @sum_hash = Hash[@sum.zip(@string)].sort.to_h
  print "Sorted by sum: ", @sum_hash.invert, "\n"
end

def sort_by_rank
  chars = @sum_hash.invert.keys.map { |e| e.length }
  rank = @sum.zip(chars).map { |x, y| x/y }
  ranked_hash = Hash[rank.zip(@string)].sort.to_h
  print "Sorted by rank: ", ranked_hash.invert, "\n"
end

ranker(@stringy)