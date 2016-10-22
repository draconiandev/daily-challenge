candidate_votes = Hash.new
print 'Enter the number of candidates: '
num = gets.chomp.to_i

(1..num).each { |i|
  puts "Candidate #{i}"
  print 'Enter candidate name: '
  name = gets.chomp
  print 'Enter the number of votes: '
  vote = gets.chomp.to_i
  candidate_votes[name] = vote
}

win_candidate = candidate_votes.values.max
max_candidate = candidate_votes.select { |k,v| v == win_candidate }

if max_candidate.length == 1
  p candidate_votes.key(candidate_votes.values.max)
else
  puts 'Sorry, no winners due to a lack of majority!'
end